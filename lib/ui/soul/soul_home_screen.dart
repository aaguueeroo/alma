import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/game_constants.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/l10n/app_localizations.dart';
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
            onPressed: () => context.go('/'),
            child: Text(AppLocalizations.of(context)!.back),
          ),
        ),
      );
    }
    final l10n = AppLocalizations.of(context)!;
    final bool showNirvana = soul.hasAchievedNirvana;
    final bool showGameOver = soul.isGameOver;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(soul.name),
      ),
      body: SingleChildScrollView(
        padding: kPaddingScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (showNirvana) _Banner(text: l10n.nirvana, color: AppColors.soulGold),
            if (showGameOver) _Banner(text: l10n.gameOver, color: AppColors.negative),
            if (showNirvana || showGameOver) kVerticalGap16,
            _LivesChip(
              count: soul.remainingLives,
              label: l10n.livesRemaining(soul.remainingLives),
            ),
            kVerticalGap24,
            Text(
              l10n.soulSubjects,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            kVerticalGap16,
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: kSpacing16,
                mainAxisSpacing: kSpacing16,
              ),
              itemCount: soul.subjects.length,
              itemBuilder: (BuildContext context, int index) {
                final SoulSubject subject = soul.subjects[index];
                return _SubjectCard(subject: subject);
              },
            ),
            kVerticalGap24,
            SizedBox(
              height: kButtonHeight,
              child: ElevatedButton(
                onPressed: soul.canStartNewLife
                    ? () => context.push('/soul/choose-life')
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.lifeGreen,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                ),
                child: Text(l10n.chooseLife),
              ),
            ),
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
    return Container(
      padding: kPaddingAll16,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(kBorderRadius),
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
    return Chip(
      avatar: Icon(Icons.favorite, color: AppColors.lifeGreen, size: kIconSizeSmall),
      label: Text(label),
      backgroundColor: AppColors.lifeGreen.withValues(alpha: 0.1),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({required this.subject});

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
      elevation: kCardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
        side: subject.isPassed
            ? BorderSide(color: AppColors.positive, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: kPaddingAll12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
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
                    horizontal: kSpacing8,
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
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: subject.isPassed
                              ? AppColors.positive
                              : AppColors.neutral,
                        ),
                  ),
                ),
              ],
            ),
            kVerticalGap8,
            LinearProgressIndicator(
              value: progress / kMaxSubjectScore,
              backgroundColor: color.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: kProgressBarHeight,
              borderRadius: BorderRadius.circular(kProgressBarHeight / 2),
            ),
          ],
        ),
      ),
    );
  }
}
