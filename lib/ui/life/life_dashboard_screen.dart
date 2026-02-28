import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/ui/life/event_dialog.dart';
import 'package:alma/ui/life/widgets/year_header_widget.dart';
import 'package:alma/ui/life/widgets/time_budget_bar.dart';
import 'package:alma/ui/life/widgets/section_card_widget.dart';
import 'package:alma/ui/life/widgets/action_tile_widget.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/shared/stat_bar_widget.dart';
import 'package:alma/ui/shared/trait_tag_widget.dart';

class LifeDashboardScreen extends ConsumerStatefulWidget {
  const LifeDashboardScreen({super.key});

  @override
  ConsumerState<LifeDashboardScreen> createState() =>
      _LifeDashboardScreenState();
}

class _LifeDashboardScreenState extends ConsumerState<LifeDashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ActionCategory _selectedCategory = ActionCategory.education;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _selectedCategory = ActionCategory.values[_tabController.index];
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final LifeControllerState lifeState = ref.watch(lifeControllerProvider);
    final Life? life = lifeState.currentLife;
    if (life == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    ref.listen<LifeControllerState>(lifeControllerProvider, (prev, next) {
      if (next.currentLife?.state.pendingEvent != null &&
          prev?.currentLife?.state.pendingEvent == null) {
        _showEventDialog(context);
      }
      if (next.currentLife?.state.isDead == true &&
          prev?.currentLife?.state.isDead != true) {
        context.go('/life/summary');
      }
    });
    final LifeState state = life.state;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(fallbackRoute: '/soul'),
        title: const Text('Life'),
        actions: [
          IconButton(
            icon: const Icon(Icons.people),
            onPressed: () => context.push('/life/relationships'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: kPaddingScreen,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  YearHeaderWidget(year: state.currentYear, age: state.age),
                  kVerticalGap12,
                  TimeBudgetBar(timeRemaining: state.timeRemaining),
                  kVerticalGap8,
                  _HealthMoneyRow(health: state.health, money: state.money),
                  kVerticalGap16,
                  _SkillsSection(state: state),
                  kVerticalGap12,
                  if (state.traits.isNotEmpty) ...[
                    _TraitsSection(traits: state.traits.map((t) => t.name).toList()),
                    kVerticalGap12,
                  ],
                  _SectionsRow(sections: state.sections),
                  kVerticalGap16,
                  Text(
                    'Actions',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  kVerticalGap8,
                  TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Education'),
                      Tab(text: 'Work'),
                      Tab(text: 'Health'),
                      Tab(text: 'Social'),
                    ],
                  ),
                  kVerticalGap8,
                  _ActionsList(
                    actions: lifeState.availableActions
                        .where((a) => a.category == _selectedCategory)
                        .toList(),
                    timeRemaining: state.timeRemaining,
                    onActionTap: (action) {
                      ref
                          .read(lifeControllerProvider.notifier)
                          .performAction(action);
                    },
                  ),
                ],
              ),
            ),
          ),
          _BottomBar(
            hasTimeRemaining: state.timeRemaining > 0,
            onNextYear: () {
              ref.read(lifeControllerProvider.notifier).progressYear();
            },
          ),
        ],
      ),
    );
  }

  void _showEventDialog(BuildContext context) {
    final LifeControllerState lifeState = ref.read(lifeControllerProvider);
    final event = lifeState.currentLife?.state.pendingEvent;
    if (event == null) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => EventDialog(
        event: event,
        onChoiceSelected: (index) {
          Navigator.of(context).pop();
          ref.read(lifeControllerProvider.notifier).resolveEvent(index);
        },
      ),
    );
  }
}

class _HealthMoneyRow extends StatelessWidget {
  const _HealthMoneyRow({required this.health, required this.money});

  final int health;
  final int money;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(Icons.favorite, color: AppColors.healthGreen, size: kIconSizeSmall),
              kHorizontalGap4,
              Text('Health: $health', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.attach_money, color: AppColors.workAmber, size: kIconSizeSmall),
              kHorizontalGap4,
              Text('Money: \$$money', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        ),
      ],
    );
  }
}

class _SkillsSection extends StatelessWidget {
  const _SkillsSection({required this.state});

  final LifeState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: Theme.of(context).textTheme.titleSmall),
        kVerticalGap8,
        StatBarWidget(
          label: 'INT',
          value: state.skills.intelligence / 100,
          color: AppColors.skillIntelligence,
        ),
        kVerticalGap4,
        StatBarWidget(
          label: 'CRE',
          value: state.skills.creativity / 100,
          color: AppColors.skillCreativity,
        ),
        kVerticalGap4,
        StatBarWidget(
          label: 'COM',
          value: state.skills.communication / 100,
          color: AppColors.skillCommunication,
        ),
        kVerticalGap4,
        StatBarWidget(
          label: 'EMO',
          value: state.skills.emotionalStability / 100,
          color: AppColors.skillEmotionalStability,
        ),
        kVerticalGap4,
        StatBarWidget(
          label: 'FIT',
          value: state.skills.fitness / 100,
          color: AppColors.skillFitness,
        ),
      ],
    );
  }
}

class _TraitsSection extends StatelessWidget {
  const _TraitsSection({required this.traits});

  final List<String> traits;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: kSpacing8,
      runSpacing: kSpacing4,
      children: traits.map((t) => TraitTagWidget(label: t)).toList(),
    );
  }
}

class _SectionsRow extends StatelessWidget {
  const _SectionsRow({required this.sections});

  final List<dynamic> sections;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: kSpacing8,
      crossAxisSpacing: kSpacing8,
      childAspectRatio: 2.2,
      children: sections
          .map((section) => SectionCardWidget(section: section))
          .toList(),
    );
  }
}

class _ActionsList extends StatelessWidget {
  const _ActionsList({
    required this.actions,
    required this.timeRemaining,
    required this.onActionTap,
  });

  final List<GameAction> actions;
  final int timeRemaining;
  final void Function(GameAction) onActionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: actions.map((action) {
        final bool canAfford = timeRemaining >= action.timeCost;
        return ActionTileWidget(
          action: action,
          isEnabled: canAfford,
          onTap: () => onActionTap(action),
        );
      }).toList(),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.hasTimeRemaining,
    required this.onNextYear,
  });

  final bool hasTimeRemaining;
  final VoidCallback onNextYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll16,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: kSpacing8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: onNextYear,
            icon: const Icon(Icons.skip_next),
            label: Text(hasTimeRemaining ? 'Next Year (skip remaining)' : 'Next Year'),
          ),
        ),
      ),
    );
  }
}
