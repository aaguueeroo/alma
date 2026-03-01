import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/shared/loading_widget.dart';

class SaveSlotsScreen extends ConsumerStatefulWidget {
  const SaveSlotsScreen({super.key});

  @override
  ConsumerState<SaveSlotsScreen> createState() => _SaveSlotsScreenState();
}

class _SaveSlotsScreenState extends ConsumerState<SaveSlotsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(soulControllerProvider.notifier).loadSouls();
    });
  }

  @override
  Widget build(BuildContext context) {
    final soulState = ref.watch(soulControllerProvider);
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.saveSlots),
      ),
      body: soulState.isLoading
          ? const LoadingWidget()
          : soulState.souls.isEmpty
              ? _EmptyState(message: l10n.noSoulsYet)
              : ListView.builder(
                  padding: padding,
                  itemCount: soulState.souls.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Soul soul = soulState.souls[index];
                    final preview = soulState.currentLifePreviews[soul.id];
                    return _SoulCard(
                      soul: soul,
                      lifePreview: preview,
                      onTap: () => _selectSoul(soul),
                      onLongPress: () => _showDeleteDialog(soul),
                    );
                  },
                ),
    );
  }

  Future<void> _selectSoul(Soul soul) async {
    await ref.read(soulControllerProvider.notifier).selectSoul(soul.id);
    if (mounted) {
      context.pop();
      context.push('/soul');
    }
  }

  void _showDeleteDialog(Soul soul) {
    final l10n = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(l10n.deleteSoul),
        content: Text(l10n.confirmDelete),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () {
              ref.read(soulControllerProvider.notifier).deleteSoul(soul.id);
              Navigator.of(context).pop();
            },
            child: Text(l10n.confirm, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ),
        ],
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

class _SoulCard extends StatelessWidget {
  const _SoulCard({
    required this.soul,
    required this.lifePreview,
    required this.onTap,
    required this.onLongPress,
  });

  final Soul soul;
  final LifePreview? lifePreview;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final dateFormat = DateFormat.yMMMd();
    final colorScheme = Theme.of(context).colorScheme;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final radius = themeExt?.radiusDefault ?? 12.0;
    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(radius),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                soul.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              kVerticalGap8,
              Text(
                l10n.livesRemaining(soul.remainingLives),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colorScheme.primary,
                    ),
              ),
              if (lifePreview != null) ...[
                kVerticalGap4,
                Builder(
                  builder: (BuildContext context) {
                    final p = lifePreview!;
                    return Text(
                      l10n.currentLifeInfo(p.templateName, p.currentYear, p.age),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: colorScheme.secondary,
                            fontStyle: FontStyle.italic,
                          ),
                    );
                  },
                ),
              ],
              kVerticalGap4,
              Text(
                dateFormat.format(soul.createdAt),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
