import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';

class SoulSubjectsScreen extends ConsumerWidget {
  const SoulSubjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final soulState = ref.watch(soulControllerProvider);
    final soul = soulState.currentSoul;
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
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(fallbackRoute: '/soul'),
        title: Text(l10n.soulSubjects),
      ),
      body: ListView.builder(
        padding: padding,
        itemCount: soul.subjects.length,
        itemBuilder: (BuildContext context, int index) {
          final SoulSubject subject = soul.subjects[index];
          return _SubjectDetailCard(subject: subject);
        },
      ),
    );
  }
}

class _SubjectDetailCard extends StatelessWidget {
  const _SubjectDetailCard({required this.subject});

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
    final positiveColor = themeExt?.accentColor ?? Theme.of(context).colorScheme.primary;
    final mutedColor = themeExt?.mutedColor ?? Theme.of(context).colorScheme.onSurfaceVariant;
    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: subject.isPassed
            ? BorderSide(color: positiveColor, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(radiusSmall),
              ),
              alignment: Alignment.center,
              child: Icon(Icons.star, color: color, size: 16),
            ),
            kHorizontalGap12,
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
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
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
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
