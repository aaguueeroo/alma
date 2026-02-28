import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/providers/achievement/achievement_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';
import 'package:alma/ui/shared/trait_tag_widget.dart';

class LifeSummaryScreen extends ConsumerStatefulWidget {
  const LifeSummaryScreen({super.key});

  @override
  ConsumerState<LifeSummaryScreen> createState() => _LifeSummaryScreenState();
}

class _LifeSummaryScreenState extends ConsumerState<LifeSummaryScreen> {
  bool _hasProcessed = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _processLifeEnd());
  }

  Future<void> _processLifeEnd() async {
    if (_hasProcessed) return;
    _hasProcessed = true;
    final LifeControllerState lifeState = ref.read(lifeControllerProvider);
    if (lifeState.currentLife == null) return;
    final Life life = lifeState.currentLife!;
    await ref.read(soulControllerProvider.notifier).completeLife(life);
    final soulState = ref.read(soulControllerProvider);
    if (soulState.currentSoul != null) {
      await ref
          .read(achievementControllerProvider.notifier)
          .checkLifeAchievements(life, soulState.currentSoul!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final LifeControllerState lifeState = ref.watch(lifeControllerProvider);
    final Life? life = lifeState.currentLife;
    if (life?.summary == null && life?.state == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    final LifeState state = life!.state;
    final LifeSummary? summary = life.summary;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(fallbackRoute: '/soul'),
        title: const Text('Life Summary'),
      ),
      body: SingleChildScrollView(
        padding: kPaddingScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DeathCard(
              age: state.age,
              causeOfDeath: state.causeOfDeath ?? 'Unknown',
            ),
            kVerticalGap16,
            _SkillsSummaryCard(state: state),
            kVerticalGap16,
            if (state.traits.isNotEmpty) ...[
              _TraitsSummaryCard(traits: state.traits.map((t) => t.name).toList()),
              kVerticalGap16,
            ],
            if (summary != null) ...[
              _SubjectContributionsCard(
                contributions: summary.subjectContributions,
              ),
              kVerticalGap16,
            ],
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(lifeControllerProvider.notifier).clearLife();
                  final soulState = ref.read(soulControllerProvider);
                  if (soulState.currentSoul?.hasAchievedNirvana == true) {
                    context.go('/soul/nirvana');
                  } else if (soulState.currentSoul?.isGameOver == true) {
                    context.go('/soul/game-over');
                  } else {
                    context.go('/soul');
                  }
                },
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeathCard extends StatelessWidget {
  const _DeathCard({
    required this.age,
    required this.causeOfDeath,
  });

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
            Text('Final Skills', style: Theme.of(context).textTheme.titleMedium),
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
            Text('Final Traits', style: Theme.of(context).textTheme.titleMedium),
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
