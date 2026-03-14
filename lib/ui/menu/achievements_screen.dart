import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/core/models/achievement.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/achievement/achievement_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/shared/loading_widget.dart';

class AchievementsScreen extends ConsumerStatefulWidget {
  const AchievementsScreen({super.key});

  @override
  ConsumerState<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends ConsumerState<AchievementsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(achievementControllerProvider.notifier).loadAchievements();
    });
  }

  @override
  Widget build(BuildContext context) {
    final achievementState = ref.watch(achievementControllerProvider);
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.achievements),
      ),
      body: achievementState.isLoading
          ? const LoadingWidget()
              : achievementState.error != null
              ? const _ErrorState()
              : achievementState.achievements.isEmpty
                  ? _EmptyState(message: l10n.noAchievementsYet)
                  : ListView.builder(
                      padding: padding,
                      itemCount: achievementState.achievements.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Achievement achievement =
                            achievementState.achievements[index];
                        return _AchievementCard(achievement: achievement);
                      },
                    ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final mutedColor = themeExt?.mutedColor ?? Theme.of(context).colorScheme.onSurfaceVariant;
    return Center(
      child: Padding(
        padding: padding,
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: mutedColor,
              ),
        ),
      ),
    );
  }
}

class _ErrorState extends ConsumerWidget {
  const _ErrorState();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final errorColor = Theme.of(context).colorScheme.error;
    final l10n = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      padding: padding,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height - padding.top - padding.bottom - kToolbarHeight,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.achievementsLoadError,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: errorColor,
                  ),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                ref.read(achievementControllerProvider.notifier).loadAchievements();
              },
              child: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  const _AchievementCard({required this.achievement});

  final Achievement achievement;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMMMd();
    final bool isUnlocked = achievement.isUnlocked;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final accentColor = themeExt?.accentColor ?? Theme.of(context).colorScheme.secondary;
    final mutedColor = themeExt?.mutedColor ?? Theme.of(context).colorScheme.onSurfaceVariant;
    final radius = themeExt?.radiusDefault ?? 12.0;
    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      color: isUnlocked
          ? accentColor.withValues(alpha: 0.12)
          : Theme.of(context).cardTheme.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: isUnlocked
            ? BorderSide(color: accentColor, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              isUnlocked ? Icons.emoji_events : Icons.lock,
              size: 32,
              color: isUnlocked ? accentColor : mutedColor,
            ),
            kHorizontalGap12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    achievement.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isUnlocked ? Theme.of(context).colorScheme.onSurface : mutedColor,
                        ),
                  ),
                  kVerticalGap4,
                  Text(
                    achievement.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: isUnlocked ? null : mutedColor,
                        ),
                  ),
                  if (achievement.unlockedAt != null) ...<Widget>[
                    kVerticalGap8,
                    Text(
                      dateFormat.format(achievement.unlockedAt!),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: accentColor,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
