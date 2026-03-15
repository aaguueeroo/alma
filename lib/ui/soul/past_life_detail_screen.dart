import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/game/game_state_provider.dart';
import 'package:alma/ui/life/widgets/log_preview_section.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';
import 'package:alma/ui/shared/trait_tag_widget.dart';

class PastLifeDetailScreen extends ConsumerWidget {
  const PastLifeDetailScreen({required this.lifeId, super.key});

  final String lifeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<Life?>(
      future: ref.read(lifeRepositoryProvider).getLifeById(lifeId),
      builder: (BuildContext context, AsyncSnapshot<Life?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final Life? life = snapshot.data;
        if (life == null || !life.isComplete) {
          return Scaffold(
            appBar: AppBar(
              leading: const BackButtonLeading(),
              title: Text(AppLocalizations.of(context)!.lifeSummary),
            ),
            body: Center(
              child: Text(
                AppLocalizations.of(context)!.noPastLivesYet,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
        return _PastLifeDetailContent(life: life);
      },
    );
  }
}

class _PastLifeDetailContent extends StatelessWidget {
  const _PastLifeDetailContent({required this.life});

  final Life life;

  List<LogPreviewFilterOption> _buildLifeLogFilterOptions(
    BuildContext context,
  ) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return [
      LogPreviewFilterOption(label: l10n.filterAll),
      LogPreviewFilterOption(
        label: l10n.filterLife,
        category: LogCategory.life,
      ),
      LogPreviewFilterOption(
        label: l10n.filterEducation,
        category: LogCategory.education,
      ),
      LogPreviewFilterOption(label: l10n.work, category: LogCategory.work),
      LogPreviewFilterOption(
        label: l10n.filterHealth,
        category: LogCategory.health,
      ),
      LogPreviewFilterOption(
        label: l10n.filterSocial,
        category: LogCategory.social,
      ),
      LogPreviewFilterOption(
        label: l10n.filterEvent,
        category: LogCategory.event,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final LifeState state = life.state;
    final LifeSummary? summary = life.summary;
    final int age = summary?.ageAtDeath ?? state.age;
    final String causeOfDeath =
        summary?.causeOfDeath ?? state.causeOfDeath ?? 'Unknown';
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(AppLocalizations.of(context)!.lifeSummary),
        actions: const [
          DebugAppBarButton(navigationContext: DebugNavigationContext.mainMenu),
        ],
      ),
      body: SingleChildScrollView(
        padding: kPaddingScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DeathCard(age: age, causeOfDeath: causeOfDeath),
            kVerticalGap16,
            _SkillsSummaryCard(state: state),
            kVerticalGap16,
            if (state.traits.isNotEmpty) ...[
              _TraitsSummaryCard(
                traits: state.traits.map((t) => t.name).toList(),
              ),
              kVerticalGap16,
            ],
            if (summary != null) ...[
              _SubjectContributionsCard(
                contributions: summary.subjectContributions,
              ),
              kVerticalGap16,
            ],
            LogPreviewSection(
              title: AppLocalizations.of(context)!.lifeLog,
              emptyMessage: AppLocalizations.of(context)!.noLogsRecorded,
              gameLogs: state.logs.reversed.toList(),
              relationships:
                  state.socialState?.relationships ?? state.relationships,
              filterOptions: _buildLifeLogFilterOptions(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeathCard extends StatelessWidget {
  const _DeathCard({required this.age, required this.causeOfDeath});

  final int age;
  final String causeOfDeath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: kPaddingAll16,
        child: Column(
          children: [
            Icon(
              Icons.sentiment_very_dissatisfied,
              size: kIconSizeLarge,
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
            kVerticalGap8,
            Text(
              'Died at age $age',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
            kVerticalGap4,
            Text(
              causeOfDeath,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkillsSummaryCard extends StatelessWidget {
  const _SkillsSummaryCard({required this.state});

  final LifeState state;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Final Skills',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            kVerticalGap12,
            StatBarWidget(
              label: 'Intelligence',
              value: state.skills.intelligence / 100,
              color: AppColors.skillIntelligence,
            ),
            kVerticalGap8,
            StatBarWidget(
              label: 'Creativity',
              value: state.skills.creativity / 100,
              color: AppColors.skillCreativity,
            ),
            kVerticalGap8,
            StatBarWidget(
              label: 'Communication',
              value: state.skills.communication / 100,
              color: AppColors.skillCommunication,
            ),
            kVerticalGap8,
            StatBarWidget(
              label: 'Emotional Stability',
              value: state.skills.emotionalStability / 100,
              color: AppColors.skillEmotionalStability,
            ),
            kVerticalGap8,
            StatBarWidget(
              label: 'Fitness',
              value: state.skills.fitness / 100,
              color: AppColors.skillFitness,
            ),
          ],
        ),
      ),
    );
  }
}

class _TraitsSummaryCard extends StatelessWidget {
  const _TraitsSummaryCard({required this.traits});

  final List<String> traits;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Final Traits',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            kVerticalGap12,
            Wrap(
              spacing: kSpacing8,
              runSpacing: kSpacing8,
              children: traits.map((t) => TraitTagWidget(label: t)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubjectContributionsCard extends StatelessWidget {
  const _SubjectContributionsCard({required this.contributions});

  final Map<String, double> contributions;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soul Subject Contributions',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            kVerticalGap12,
            ...contributions.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: kSpacing8),
                child: StatBarWidget(
                  label: entry.key[0].toUpperCase() + entry.key.substring(1),
                  value: (entry.value / 100).clamp(0.0, 1.0),
                  color: _getSubjectColor(entry.key),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Color _getSubjectColor(String subject) {
    switch (subject) {
      case 'compassion':
        return AppColors.compassionPink;
      case 'discipline':
        return AppColors.disciplineOrange;
      case 'courage':
        return AppColors.courageRed;
      case 'wisdom':
        return AppColors.wisdomIndigo;
      case 'fun':
        return AppColors.funYellow;
      case 'humility':
        return AppColors.humilityTeal;
      default:
        return AppColors.neutral;
    }
  }
}
