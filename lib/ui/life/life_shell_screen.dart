import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/enums/action_category.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/durations.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/ui/life/event_dialog.dart';
import 'package:alma/ui/life/tabs/life_main_tab.dart';
import 'package:alma/ui/life/tabs/work_tab.dart';
import 'package:alma/ui/life/tabs/education_tab.dart';
import 'package:alma/ui/life/tabs/health_tab.dart';
import 'package:alma/ui/life/tabs/relations_tab.dart';

class LifeShellScreen extends ConsumerStatefulWidget {
  const LifeShellScreen({super.key});

  @override
  ConsumerState<LifeShellScreen> createState() => _LifeShellScreenState();
}

class _LifeShellScreenState extends ConsumerState<LifeShellScreen> {
  static const int _defaultTabIndex = 2;
  int _currentIndex = _defaultTabIndex;

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
        context.push('/life/summary');
      }
    });
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final LifeState state = life.state;
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: _buildAppBar(context, l10n, state),
        body: Column(
        children: [
          Expanded(
            child: AnimatedSwitcher(
              duration: kDurationNormal,
              child: _buildTabContent(
                key: ValueKey(_currentIndex),
                state: state,
                lifeState: lifeState,
              ),
            ),
          ),
          _NextYearBar(
            hasTimeRemaining: state.timeRemaining > 0,
            onNextYear: () {
              ref.read(lifeControllerProvider.notifier).progressYear();
            },
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(context, l10n),
    ));
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    AppLocalizations l10n,
    LifeState state,
  ) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Icon(
            Icons.account_balance_wallet_outlined,
            size: kIconSize,
            color: colors.onSurface,
          ),
          kHorizontalGap8,
          Text(
            l10n.moneyAmount(state.money),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.store_outlined),
          tooltip: l10n.store,
          onPressed: () => context.push('/life/store'),
        ),
        IconButton(
          icon: const Icon(Icons.logout_outlined),
          tooltip: l10n.exitLife,
          onPressed: () => _showExitDialog(context, l10n),
        ),
      ],
    );
  }

  Widget _buildTabContent({
    required Key key,
    required LifeState state,
    required LifeControllerState lifeState,
  }) {
    switch (_currentIndex) {
      case 0:
        return WorkTab(
          key: key,
          state: state,
          actions: lifeState.availableActions
              .where((a) => a.category == ActionCategory.work)
              .toList(),
          onActionTap: _performAction,
        );
      case 1:
        return EducationTab(
          key: key,
          state: state,
          actions: lifeState.availableActions
              .where((a) => a.category == ActionCategory.education)
              .toList(),
          onActionTap: _performAction,
        );
      case 2:
        return LifeMainTab(key: key, state: state);
      case 3:
        return HealthTab(
          key: key,
          state: state,
          actions: lifeState.availableActions
              .where((a) => a.category == ActionCategory.health)
              .toList(),
          timeRemaining: state.timeRemaining,
          onActionTap: _performAction,
        );
      case 4:
        return RelationsTab(
          key: key,
          relationships: state.relationships,
        );
      default:
        return LifeMainTab(key: key, state: state);
    }
  }

  NavigationBar _buildBottomNav(BuildContext context, AppLocalizations l10n) {
    return NavigationBar(
      selectedIndex: _currentIndex,
      onDestinationSelected: (int index) {
        setState(() => _currentIndex = index);
      },
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.work_outline),
          selectedIcon: const Icon(Icons.work),
          label: l10n.tabWork,
        ),
        NavigationDestination(
          icon: const Icon(Icons.school_outlined),
          selectedIcon: const Icon(Icons.school),
          label: l10n.tabEducation,
        ),
        NavigationDestination(
          icon: const Icon(Icons.person_outline),
          selectedIcon: const Icon(Icons.person),
          label: l10n.tabLife,
        ),
        NavigationDestination(
          icon: const Icon(Icons.favorite_outline),
          selectedIcon: const Icon(Icons.favorite),
          label: l10n.tabHealth,
        ),
        NavigationDestination(
          icon: const Icon(Icons.people_outline),
          selectedIcon: const Icon(Icons.people),
          label: l10n.tabRelations,
        ),
      ],
    );
  }

  void _performAction(GameAction action) {
    ref.read(lifeControllerProvider.notifier).performAction(action);
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

  void _showExitDialog(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(l10n.exitLifeConfirmTitle),
        content: Text(l10n.exitLifeConfirmMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              context.go('/soul');
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }
}

class _NextYearBar extends StatelessWidget {
  const _NextYearBar({
    required this.hasTimeRemaining,
    required this.onNextYear,
  });

  final bool hasTimeRemaining;
  final VoidCallback onNextYear;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Container(
      padding: kPaddingAll16,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: kSpacing8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: onNextYear,
            icon: const Icon(Icons.skip_next),
            label: Text(
              hasTimeRemaining ? l10n.nextYearSkipRemaining : l10n.nextYear,
            ),
          ),
        ),
      ),
    );
  }
}
