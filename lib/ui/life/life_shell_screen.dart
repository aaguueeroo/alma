import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/education/education_program.dart';
import 'package:alma/core/models/education/education_prompt.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/constants/durations.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/ui/life/event_dialog.dart';
import 'package:alma/ui/life/education_enroll_dialog.dart';
import 'package:alma/ui/life/job_apply_dialog.dart';
import 'package:alma/core/models/work/job.dart';
import 'package:alma/core/models/work/work_prompt.dart';
import 'package:alma/ui/life/tabs/life_main_tab.dart';
import 'package:alma/ui/life/tabs/work_tab.dart';
import 'package:alma/ui/life/tabs/education_tab.dart';
import 'package:alma/ui/life/tabs/health_tab.dart';
import 'package:alma/ui/life/tabs/relations_tab.dart';
import 'package:alma/ui/life/widgets/time_budget_bar.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';

DebugNavigationContext _debugContextFromTabIndex(int index) {
  switch (index) {
    case 0:
      return DebugNavigationContext.workTab;
    case 1:
      return DebugNavigationContext.educationTab;
    case 2:
      return DebugNavigationContext.lifeTab;
    case 3:
      return DebugNavigationContext.healthTab;
    case 4:
      return DebugNavigationContext.relationsTab;
    default:
      return DebugNavigationContext.lifeTab;
  }
}

class LifeShellScreen extends ConsumerStatefulWidget {
  const LifeShellScreen({super.key});

  @override
  ConsumerState<LifeShellScreen> createState() => _LifeShellScreenState();
}

class _LifeShellScreenState extends ConsumerState<LifeShellScreen> {
  static const int _defaultTabIndex = 2;
  int _currentIndex = _defaultTabIndex;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _defaultTabIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
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
      if (next.error != null && prev?.error != next.error) {
        final String okLabel = AppLocalizations.of(context)?.ok ?? 'OK';
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error!),
            action: SnackBarAction(
              label: okLabel,
              onPressed: () {
                ref.read(lifeControllerProvider.notifier).clearError();
              },
            ),
          ),
        );
      }
      if (next.currentLife?.state.pendingEvent != null &&
          prev?.currentLife?.state.pendingEvent == null) {
        _showEventDialog(context);
      }
      if (next.currentLife?.state.educationState?.pendingPrompt != null &&
          prev?.currentLife?.state.educationState?.pendingPrompt == null) {
        _showEducationPrompt(context);
      }
      if (next.currentLife?.state.workState?.pendingPrompt != null &&
          prev?.currentLife?.state.workState?.pendingPrompt == null) {
        _showWorkPrompt(context);
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
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() => _currentIndex = index);
              },
              children: _buildAllPages(state: state, lifeState: lifeState),
            ),
          ),
          _YearProgressSection(
            timeRemaining: state.timeRemaining,
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
        DebugAppBarButton(
          navigationContext: _debugContextFromTabIndex(_currentIndex),
        ),
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

  List<Widget> _buildAllPages({
    required LifeState state,
    required LifeControllerState lifeState,
  }) {
    return [
      WorkTab(
        key: const ValueKey<int>(0),
        state: state,
        actionsByJobId: ref.read(lifeControllerProvider.notifier).getWorkActions(),
        onActionTap: _performAction,
        onGetJobTap: () => _showJobApplyDialog(context),
        onQuitJobTap: (String jobId) => _showQuitJobDialog(context, jobId),
        onAskPromotionTap: (String jobId) {
          ref.read(lifeControllerProvider.notifier).requestPromotion(jobId);
        },
      ),
      EducationTab(
        key: const ValueKey<int>(1),
        state: state,
        actions: ref.read(lifeControllerProvider.notifier).getEducationActions(),
        onActionTap: _performAction,
        onEnrollTap: () => _showEducationPrompt(context),
        onDropOutTap: () => ref.read(lifeControllerProvider.notifier).dropOut(),
        canDropOut: ref.read(lifeControllerProvider.notifier).canDropOutFromCurrentEnrollment,
      ),
      LifeMainTab(key: const ValueKey<int>(2), state: state),
      HealthTab(
        key: const ValueKey<int>(3),
        state: state,
        timeRemaining: state.timeRemaining,
        controller: ref.read(lifeControllerProvider.notifier),
      ),
      RelationsTab(
        key: const ValueKey<int>(4),
        relationships: state.socialState?.relationships ?? state.relationships,
        logs: state.logs,
        genericActions: ref.read(lifeControllerProvider.notifier).getSocialGenericActions(),
        getNpcActions: (String npcId) {
          return ref.read(lifeControllerProvider.notifier).getNpcActions(npcId);
        },
        getPerformedActionsThisYear: (String npcId) {
          return ref.read(lifeControllerProvider.notifier).getPerformedActionsThisYear(npcId);
        },
        getRelationshipTypeLabel: (String typeId) {
          return ref.read(lifeControllerProvider.notifier).getRelationshipTypeLabel(typeId);
        },
        getIsAttractionAllowed: (String typeId) {
          return ref.read(lifeControllerProvider.notifier).isAttractionAllowedForRelationshipType(typeId);
        },
        onGenericActionTap: (action, targetNpcIds) {
          ref.read(lifeControllerProvider.notifier).performSocialAction(
                action,
                targetNpcIds,
              );
        },
        onNpcActionTap: (action, npcId) {
          ref.read(lifeControllerProvider.notifier).performSocialAction(
                action,
                [npcId],
              );
        },
      ),
    ];
  }

  NavigationBar _buildBottomNav(BuildContext context, AppLocalizations l10n) {
    return NavigationBar(
      selectedIndex: _currentIndex,
      onDestinationSelected: (int index) {
        if (index == _currentIndex) return;
        setState(() => _currentIndex = index);
        _pageController.animateToPage(
          index,
          duration: kDurationNormal,
          curve: Curves.easeInOut,
        );
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

  void _performAction(GameAction action, {String? workJobId}) {
    ref.read(lifeControllerProvider.notifier).performAction(
          action,
          workJobContext: workJobId,
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

  void _showEducationPrompt(BuildContext context) {
    final LifeControllerState lifeState = ref.read(lifeControllerProvider);
    final LifeController controller = ref.read(lifeControllerProvider.notifier);
    EducationPrompt? prompt = lifeState.currentLife?.state.educationState?.pendingPrompt;
    if (prompt == null) {
      final List<EducationProgram> programs = controller.getAvailableProgramsForEnrollment();
      if (programs.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.noProgramsAvailable)),
        );
        return;
      }
      prompt = EducationPrompt(
        title: AppLocalizations.of(context)!.enrollDialogTitle,
        description: AppLocalizations.of(context)!.enrollDialogDescription,
        availablePrograms: programs,
        canDecline: true,
      );
    }
    final EducationPrompt dialogPrompt = prompt;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => EducationEnrollDialog(
        prompt: dialogPrompt,
        onProgramSelected: (EducationProgram program) {
          Navigator.of(context).pop();
          ref.read(lifeControllerProvider.notifier).enrollInProgram(
                program,
                initialPerformance: dialogPrompt.carryOverPerformance,
              );
        },
        onDecline: () {
          Navigator.of(context).pop();
          if (lifeState.currentLife?.state.educationState?.pendingPrompt != null) {
            ref.read(lifeControllerProvider.notifier).declineEnrollment();
          }
        },
      ),
    );
  }

  void _showJobApplyDialog(BuildContext context) {
    final LifeController controller = ref.read(lifeControllerProvider.notifier);
    final LifeControllerState lifeState = ref.read(lifeControllerProvider);
    final List<Job> jobs = controller.getAvailableJobs();
    final int timeRemaining = lifeState.currentLife?.state.timeRemaining ?? 0;
    showDialog(
      context: context,
      builder: (_) => JobApplyDialog(
        availableJobs: jobs,
        timeRemaining: timeRemaining,
        onJobSelected: (Job job) {
          Navigator.of(context).pop();
          controller.applyToJob(job);
        },
        onDecline: () => Navigator.of(context).pop(),
      ),
    );
  }

  void _showQuitJobDialog(BuildContext context, String jobId) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final LifeControllerState lifeState = ref.read(lifeControllerProvider);
    final String jobName = lifeState.currentLife?.state.workState
            ?.currentEmployments
            .where((e) => e.jobId == jobId)
            .firstOrNull
            ?.jobName ??
        '';
    showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(l10n.quitJobConfirmTitle),
        content: Text(l10n.quitJobConfirmMessage(jobName)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              ref.read(lifeControllerProvider.notifier).quitJob(jobId);
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  void _showWorkPrompt(BuildContext context) {
    final LifeControllerState lifeState = ref.read(lifeControllerProvider);
    final WorkPrompt? prompt =
        lifeState.currentLife?.state.workState?.pendingPrompt;
    if (prompt == null) return;
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: Text(prompt.title),
        content: Text(prompt.description),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(lifeControllerProvider.notifier).dismissWorkPrompt();
            },
            child: Text(l10n.ok),
          ),
        ],
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

class _YearProgressSection extends StatelessWidget {
  const _YearProgressSection({
    required this.timeRemaining,
    required this.onNextYear,
  });

  final int timeRemaining;
  final VoidCallback onNextYear;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final bool hasTimeRemaining = timeRemaining > 0;
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kSpacing12),
              child: TimeBudgetBar(timeRemaining: timeRemaining),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: onNextYear,
                icon: const Icon(Icons.skip_next),
                label: Text(
                  hasTimeRemaining
                      ? l10n.nextYearSkipRemaining
                      : l10n.nextYear,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
