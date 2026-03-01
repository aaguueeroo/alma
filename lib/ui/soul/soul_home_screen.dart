import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';

class SoulHomeScreen extends ConsumerWidget {
  const SoulHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final soulState = ref.watch(soulControllerProvider);
    final Soul? soul = soulState.currentSoul;
    if (soul == null) {
      return Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              if (context.canPop()) {
                while (context.mounted && context.canPop()) {
                  context.pop();
                }
              } else {
                context.go('/');
              }
            },
            child: Text(AppLocalizations.of(context)!.back),
          ),
        ),
      );
    }
    final l10n = AppLocalizations.of(context)!;
    final bool showNirvana = soul.hasAchievedNirvana;
    final bool showGameOver = soul.isGameOver;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final sectionGap = themeExt?.sectionGap ?? 28.0;
    final radius = themeExt?.radiusDefault ?? 12.0;
    final colorScheme = Theme.of(context).colorScheme;
    final accentColor = themeExt?.accentColor ?? colorScheme.secondary;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(soul.name),
      ),
      body: SingleChildScrollView(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (showNirvana) _Banner(text: l10n.nirvana, color: accentColor),
            if (showGameOver) _Banner(text: l10n.gameOver, color: colorScheme.error),
            if (showNirvana || showGameOver) SizedBox(height: sectionGap * 0.5),
            _LivesChip(
              count: soul.remainingLives,
              label: l10n.livesRemaining(soul.remainingLives),
            ),
            SizedBox(height: sectionGap),
            Text(
              l10n.soulSubjects,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: sectionGap * 0.5),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: soul.subjects.length,
              itemBuilder: (BuildContext context, int index) {
                final SoulSubject subject = soul.subjects[index];
                return _SubjectCard(subject: subject);
              },
            ),
            SizedBox(height: sectionGap),
            if (soul.currentLifeId != null) ...[
              SizedBox(
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    final lifeId = soul.currentLifeId!;
                    final ok = await ref
                        .read(lifeControllerProvider.notifier)
                        .loadLifeById(lifeId);
                    if (context.mounted) {
                      if (ok) {
                        context.push('/life');
                      } else {
                        await ref
                            .read(soulControllerProvider.notifier)
                            .clearCurrentLifeIfStale(lifeId);
                      }
                    }
                  },
                  icon: const Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                    ),
                  ),
                  label: Text(l10n.continueLife),
                ),
              ),
              SizedBox(height: sectionGap * 0.4),
            ],
            if (soul.canStartNewLife) ...[
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () => context.push('/soul/choose-life'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                    ),
                  ),
                  child: Text(l10n.chooseLife),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final radius = themeExt?.radiusDefault ?? 12.0;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: color, width: 2),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
            ),
      ),
    );
  }
}

class _LivesChip extends StatelessWidget {
  const _LivesChip({required this.count, required this.label});

  final int count;
  final String label;

  @override
  Widget build(BuildContext context) {
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final accentColor = themeExt?.accentColor ?? Theme.of(context).colorScheme.secondary;
    return Chip(
      avatar: Icon(Icons.favorite, color: accentColor, size: 16),
      label: Text(label),
      backgroundColor: accentColor.withValues(alpha: 0.12),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({required this.subject});

  final SoulSubject subject;

  Color _colorForSubject(BuildContext context, SoulSubjectType type) {
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final base = themeExt?.accentColor ?? Theme.of(context).colorScheme.secondary;
    final opacities = <SoulSubjectType, double>{
      SoulSubjectType.compassion: 0.9,
      SoulSubjectType.discipline: 0.75,
      SoulSubjectType.courage: 0.9,
      SoulSubjectType.wisdom: 0.85,
      SoulSubjectType.fun: 0.7,
      SoulSubjectType.humility: 0.8,
    };
    return base.withValues(alpha: opacities[type] ?? 0.8);
  }

  String _labelForSubject(BuildContext context, SoulSubjectType type) {
    final l10n = AppLocalizations.of(context)!;
    switch (type) {
      case SoulSubjectType.compassion:
        return l10n.compassion;
      case SoulSubjectType.discipline:
        return l10n.discipline;
      case SoulSubjectType.courage:
        return l10n.courage;
      case SoulSubjectType.wisdom:
        return l10n.wisdom;
      case SoulSubjectType.fun:
        return l10n.fun;
      case SoulSubjectType.humility:
        return l10n.humility;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final Color color = _colorForSubject(context, subject.type);
    final String label = _labelForSubject(context, subject.type);
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final radius = themeExt?.radiusDefault ?? 12.0;
    final radiusSmall = themeExt?.radiusSmall ?? 8.0;
    final colorScheme = Theme.of(context).colorScheme;
    final positiveColor = themeExt?.accentColor ?? colorScheme.primary;
    final mutedColor = themeExt?.mutedColor ?? colorScheme.onSurfaceVariant;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: subject.isPassed
            ? BorderSide(color: positiveColor, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, color: color, size: 16),
            kHorizontalGap8,
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: subject.isPassed
                    ? positiveColor.withValues(alpha: 0.2)
                    : mutedColor.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(radiusSmall),
              ),
              child: Text(
                subject.isPassed ? l10n.passed : l10n.notPassed,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: subject.isPassed
                          ? positiveColor
                          : mutedColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
