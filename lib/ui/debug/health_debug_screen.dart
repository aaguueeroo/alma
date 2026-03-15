import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/health/condition_definition.dart';
import 'package:alma/core/models/health/health_action.dart';
import 'package:alma/core/models/health/condition_type.dart';
import 'package:alma/providers/debug/debug_controller.dart';
import 'package:alma/providers/game/game_state_provider.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_section_header.dart';
import 'package:alma/ui/debug/widgets/debug_multiplier_tile.dart';
import 'package:alma/ui/debug/widgets/debug_condition_tile.dart';
import 'package:alma/ui/debug/widgets/debug_action_event_tile.dart';
import 'package:alma/ui/debug/widgets/debug_editable_value_tile.dart';

class HealthDebugScreen extends ConsumerStatefulWidget {
  const HealthDebugScreen({super.key});

  @override
  ConsumerState<HealthDebugScreen> createState() => _HealthDebugScreenState();
}

class _HealthDebugScreenState extends ConsumerState<HealthDebugScreen> {
  List<ConditionDefinition> _conditions = [];
  List<HealthAction> _healthActions = [];
  List<GameEvent> _healthEvents = [];
  bool _isLoading = true;
  bool _hasLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasLoaded) {
      _hasLoaded = true;
      _loadData();
    }
  }

  Future<void> _loadData() async {
    final debugController = ref.read(debugControllerProvider);
    final conditions = await debugController.getConditionDefinitions();
    final events = await debugController.getAllEvents();
    final healthEngine = ref.read(healthEngineProvider);
    List<HealthAction> actions = [];
    if (healthEngine.isLoaded) {
      actions = healthEngine.getAllHealthActions();
    }
    final healthEvents = events
        .where((e) => ref.read(eventEngineProvider).isHealthEvent(e.id))
        .toList();
    if (mounted) {
      setState(() {
        _conditions = conditions;
        _healthActions = actions;
        _healthEvents = healthEvents;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final life = ref.watch(lifeControllerProvider).currentLife;
    final debugController = ref.read(debugControllerProvider);
    final healthEngine = ref.read(healthEngineProvider);
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButtonLeading(),
          title: const Text('Health Debug'),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (life == null) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButtonLeading(),
          title: const Text('Health Debug'),
        ),
        body: const Center(child: Text('Load a life to use health debug')),
      );
    }
    final healthState = life.state.healthState;
    final timeCostMultiplier = healthEngine.isLoaded && healthState != null
        ? healthEngine.getTimeCostMultiplier(healthState)
        : 1.0;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: const Text('Health Debug'),
      ),
      body: ListView(
        padding: kPaddingAll16,
        children: [
          const DebugSectionHeader(title: 'Editable Values'),
          if (healthState != null) ...[
            DebugEditableValueTile(
              label: 'Physical Health',
              value: healthState.physicalHealth,
              valueFormatter: (v) => (v as double).toStringAsFixed(1),
              onEdit: () => _showEditDialog(
                context,
                'Physical Health',
                healthState.physicalHealth.toStringAsFixed(1),
                (v) => debugController.debugSetPhysicalHealth(
                  double.tryParse(v) ?? healthState.physicalHealth,
                ),
              ),
            ),
            DebugEditableValueTile(
              label: 'Mental Health',
              value: healthState.mentalHealth,
              valueFormatter: (v) => (v as double).toStringAsFixed(1),
              onEdit: () => _showEditDialog(
                context,
                'Mental Health',
                healthState.mentalHealth.toStringAsFixed(1),
                (v) => debugController.debugSetMentalHealth(
                  double.tryParse(v) ?? healthState.mentalHealth,
                ),
              ),
            ),
            DebugEditableValueTile(
              label: 'Stress',
              value: healthState.stress,
              valueFormatter: (v) => (v as double).toStringAsFixed(1),
              onEdit: () => _showEditDialog(
                context,
                'Stress',
                healthState.stress.toStringAsFixed(1),
                (v) => debugController.debugSetStress(
                  double.tryParse(v) ?? healthState.stress,
                ),
              ),
            ),
          ],
          const DebugSectionHeader(title: 'Multipliers'),
          DebugMultiplierTile(
            label: 'Time cost multiplier',
            value: timeCostMultiplier.toStringAsFixed(3),
          ),
          DebugMultiplierTile(
            label: 'Natural decay age factor',
            value: '0.001',
          ),
          DebugMultiplierTile(
            label: 'Natural decay mental factor',
            value: '0.5',
          ),
          DebugMultiplierTile(
            label: 'Aging penalty start age',
            value: '60',
          ),
          DebugMultiplierTile(
            label: 'Aging degeneration base',
            value: '0.3',
          ),
          if (healthState != null && healthState.conditions.isNotEmpty) ...[
            const DebugSectionHeader(title: 'Active condition multipliers'),
            ...healthState.conditions.map((c) => DebugMultiplierTile(
                  label: '${c.name} (timeCost)',
                  value: c.timeCostMultiplier.toStringAsFixed(2),
                )),
            ...healthState.conditions.map((c) => DebugMultiplierTile(
                  label: '${c.name} (work perf)',
                  value: c.workPerformanceEffect.toStringAsFixed(1),
                )),
            ...healthState.conditions.map((c) => DebugMultiplierTile(
                  label: '${c.name} (study perf)',
                  value: c.studyPerformanceEffect.toStringAsFixed(1),
                )),
            ...healthState.conditions.map((c) => DebugMultiplierTile(
                  label: '${c.name} (relationship)',
                  value: c.relationshipEffect.toStringAsFixed(1),
                )),
          ],
          const DebugSectionHeader(title: 'Conditions (Sicknesses)'),
          ..._conditions.map((def) {
            final hasCondition = healthState?.conditions
                    .any((c) => c.id == def.id) ??
                false;
            final effects = 'phys: ${def.physicalHealthEffect}, '
                'ment: ${def.mentalHealthEffect}, '
                'timeCost: ${def.timeCostMultiplier}, '
                'work: ${def.workPerformanceEffect}, '
                'study: ${def.studyPerformanceEffect}, '
                'rel: ${def.relationshipEffect}';
            return DebugConditionTile(
              name: def.name,
              type: def.type == ConditionType.physical ? 'physical' : 'mental',
              effectsSummary: effects,
              hasCondition: hasCondition,
              onGive: () => debugController.debugAddCondition(def),
              onRemove: () => debugController.debugRemoveCondition(def.id),
            );
          }),
          const DebugSectionHeader(title: 'Health Actions'),
          ..._healthActions.map((action) {
            final effects = 'phys: ${action.physicalHealthEffect}, '
                'ment: ${action.mentalHealthEffect}';
            return DebugActionEventTile(
              title: action.name,
              description: action.description,
              effectsSummary: effects,
              onTrigger: () =>
                  ref.read(lifeControllerProvider.notifier).performHealthAction(action),
            );
          }),
          const DebugSectionHeader(title: 'Health Events'),
          ..._healthEvents.map((event) {
            final effects = event.choices
                .map((c) =>
                    '${c.description}: health${c.consequences.healthChange >= 0 ? '+' : ''}${c.consequences.healthChange}, '
                    'money${c.consequences.moneyChange >= 0 ? '+' : ''}${c.consequences.moneyChange}')
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
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
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
