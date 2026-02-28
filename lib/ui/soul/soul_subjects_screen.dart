import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
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
            onPressed: () => context.go('/'),
            child: Text(AppLocalizations.of(context)!.back),
          ),
        ),
      );
    }
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(fallbackRoute: '/soul'),
        title: Text(l10n.soulSubjects),
      ),
      body: ListView.builder(
        padding: kPaddingScreen,
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

  Color _colorForSubject(SoulSubjectType type) {
    switch (type) {
      case SoulSubjectType.compassion:
        return AppColors.compassionPink;
      case SoulSubjectType.discipline:
        return AppColors.disciplineOrange;
      case SoulSubjectType.courage:
        return AppColors.courageRed;
      case SoulSubjectType.wisdom:
        return AppColors.wisdomIndigo;
      case SoulSubjectType.fun:
        return AppColors.funYellow;
      case SoulSubjectType.humility:
        return AppColors.humilityTeal;
    }
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
    final Color color = _colorForSubject(subject.type);
    final String label = _labelForSubject(context, subject.type);
    final int progress = subject.progress.clamp(0, kMaxSubjectScore);
    return Card(
      margin: const EdgeInsets.only(bottom: kSpacing16),
      elevation: kCardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
        side: subject.isPassed
            ? BorderSide(color: AppColors.positive, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: kSpacing32,
                  height: kSpacing32,
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(kBorderRadiusSmall),
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.star, color: color, size: kIconSizeSmall),
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
                    horizontal: kSpacing12,
                    vertical: kSpacing4,
                  ),
                  decoration: BoxDecoration(
                    color: subject.isPassed
                        ? AppColors.positive.withValues(alpha: 0.2)
                        : AppColors.neutral.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(kBorderRadiusSmall),
                  ),
                  child: Text(
                    subject.isPassed ? l10n.passed : l10n.notPassed,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: subject.isPassed
                              ? AppColors.positive
                              : AppColors.neutral,
                        ),
                  ),
                ),
              ],
            ),
            kVerticalGap12,
            LinearProgressIndicator(
              value: progress / kMaxSubjectScore,
              backgroundColor: color.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: kProgressBarHeightLarge,
              borderRadius: BorderRadius.circular(kProgressBarHeightLarge / 2),
            ),
            kVerticalGap4,
            Text(
              '$progress / $kMaxSubjectScore',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.neutral,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
