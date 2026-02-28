import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.achievements),
      ),
      body: achievementState.isLoading
          ? const LoadingWidget()
          : ListView.builder(
              padding: kPaddingScreen,
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

class _AchievementCard extends StatelessWidget {
  const _AchievementCard({required this.achievement});

  final Achievement achievement;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMMMd();
    final bool isUnlocked = achievement.isUnlocked;
    return Card(
      margin: const EdgeInsets.only(bottom: kSpacing16),
      elevation: kCardElevation,
      color: isUnlocked
          ? AppColors.soulGold.withValues(alpha: 0.1)
          : Theme.of(context).cardTheme.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
        side: isUnlocked
            ? const BorderSide(color: AppColors.soulGold, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: kPaddingAll16,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              isUnlocked ? Icons.emoji_events : Icons.lock,
              size: kIconSizeLarge,
              color: isUnlocked ? AppColors.soulGold : AppColors.neutral,
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
                          color: isUnlocked ? AppColors.soulPurple : null,
                        ),
                  ),
                  kVerticalGap4,
                  Text(
                    achievement.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: isUnlocked ? null : AppColors.neutral,
                        ),
                  ),
                  if (achievement.unlockedAt != null) ...<Widget>[
                    kVerticalGap8,
                    Text(
                      dateFormat.format(achievement.unlockedAt!),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.soulGold,
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
