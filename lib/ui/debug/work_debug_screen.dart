import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/core/models/work/job.dart';
import 'package:alma/providers/debug/debug_controller.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/providers/game/game_state_provider.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_section_header.dart';
import 'package:alma/ui/debug/widgets/debug_multiplier_tile.dart';
import 'package:alma/ui/debug/widgets/debug_action_event_tile.dart';
import 'package:alma/ui/debug/widgets/debug_editable_value_tile.dart';

class WorkDebugScreen extends ConsumerStatefulWidget {
  const WorkDebugScreen({super.key});

  @override
  ConsumerState<WorkDebugScreen> createState() => _WorkDebugScreenState();
}

class _WorkDebugScreenState extends ConsumerState<WorkDebugScreen> {
  List<Job> _jobs = [];
  List<GameEvent> _workEvents = [];
  bool _isLoading = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isLoading) {
      _isLoading = false;
      _loadData();
    }
  }

  Future<void> _loadData() async {
    final seedLoader = ref.read(seedLoaderProvider);
    final debugController = ref.read(debugControllerProvider);
    List<Job> jobs = [];
    try {
      jobs = await seedLoader.loadJobs();
    } catch (_) {}
    final events = await debugController.getAllEvents();
    final workEvents = events
        .where(
          (e) =>
              e.triggerConditions.requiredJobIds != null &&
              e.triggerConditions.requiredJobIds!.isNotEmpty,
        )
        .toList();
    if (mounted) {
      setState(() {
        _jobs = jobs;
        _workEvents = workEvents;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lifeState = ref.watch(lifeControllerProvider);
    final life = lifeState.currentLife;
    final workActions = lifeState.workActions;
    final debugController = ref.read(debugControllerProvider);
    if (life == null) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButtonLeading(),
          title: const Text('Work Debug'),
        ),
        body: const Center(child: Text('Load a life to use work debug')),
      );
    }
    final workState = life.state.workState;
    final employments = workState?.currentEmployments ?? [];
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: const Text('Work Debug'),
      ),
      body: ListView(
        padding: kPaddingAll16,
        children: [
          const DebugSectionHeader(title: 'Editable Values'),
          ...employments.map(
            (emp) => DebugEditableValueTile(
              label: '${emp.jobName} performance',
              value: emp.performance,
              onEdit: () => _showEditDialog(
                context,
                '${emp.jobName} performance',
                emp.performance.toString(),
                (v) => debugController.debugSetWorkPerformance(
                  emp.jobId,
                  int.tryParse(v) ?? emp.performance,
                ),
              ),
            ),
          ),
          DebugEditableValueTile(
            label: 'Work section performance',
            value:
                life.state.sections
                    .where((s) => s.type == SectionType.work)
                    .firstOrNull
                    ?.performance ??
                50,
            onEdit: () {
              final current =
                  life.state.sections
                      .where((s) => s.type == SectionType.work)
                      .firstOrNull
                      ?.performance ??
                  50;
              _showEditDialog(
                context,
                'Work section performance',
                current.toString(),
                (v) => debugController.debugSetSectionPerformance(
                  SectionType.work,
                  int.tryParse(v) ?? current,
                ),
              );
            },
          ),
          const DebugSectionHeader(title: 'Multipliers'),
          ..._jobs.expand(
            (job) => job.levels.map(
              (level) => DebugMultiplierTile(
                label: '${job.name} L${level.level} (${level.title})',
                value: level.salaryMultiplier.toStringAsFixed(2),
              ),
            ),
          ),
          if (life.state.healthState != null &&
              life.state.healthState!.conditions.isNotEmpty) ...[
            const DebugSectionHeader(title: 'Condition work effects'),
            ...life.state.healthState!.conditions.map(
              (c) => DebugMultiplierTile(
                label: '${c.name} work perf',
                value: c.workPerformanceEffect.toStringAsFixed(1),
              ),
            ),
          ],
          const DebugSectionHeader(title: 'Work Actions'),
          ...workActions.map((action) {
            final effects = _actionEffectsSummary(action);
            return DebugActionEventTile(
              title: action.name,
              description: action.description,
              effectsSummary: effects,
              onTrigger: () {
                final jobId = employments.isNotEmpty
                    ? employments.first.jobId
                    : null;
                debugController.debugPerformAction(
                  action,
                  workJobContext: jobId,
                );
              },
            );
          }),
          const DebugSectionHeader(title: 'Work Events'),
          ..._workEvents.map((event) {
            final effects = event.choices
                .map(
                  (c) =>
                      'health${c.consequences.healthChange >= 0 ? '+' : ''}${c.consequences.healthChange}, '
                      'money${c.consequences.moneyChange >= 0 ? '+' : ''}${c.consequences.moneyChange}',
                )
                .join(' | ');
            return DebugActionEventTile(
              title: event.title,
              description: event.description,
              effectsSummary: effects,
              onTrigger: () => debugController.debugTriggerEvent(event.id),
            );
          }),
        ],
      ),
    );
  }

  String _actionEffectsSummary(GameAction action) {
    final parts = <String>[];
    if (action.skillEffects.isNotEmpty) {
      parts.add('skills: ${action.skillEffects}');
    }
    if (action.healthEffect != 0) {
      parts.add('health: ${action.healthEffect}');
    }
    if (action.sectionPerformanceEffect != 0) {
      parts.add('perf: ${action.sectionPerformanceEffect}');
    }
    return parts.join(', ');
  }

  void _showEditDialog(
    BuildContext context,
    String label,
    String initialValue,
    void Function(String) onSave,
  ) {
    final controller = TextEditingController(text: initialValue);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Edit $label'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              onSave(controller.text);
              Navigator.of(ctx).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
