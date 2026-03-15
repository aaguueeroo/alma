import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/core/models/action.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/core/models/enums/section_type.dart';
import 'package:alma/providers/debug/debug_controller.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_section_header.dart';
import 'package:alma/ui/debug/widgets/debug_multiplier_tile.dart';
import 'package:alma/ui/debug/widgets/debug_action_event_tile.dart';
import 'package:alma/ui/debug/widgets/debug_editable_value_tile.dart';

class EducationDebugScreen extends ConsumerStatefulWidget {
  const EducationDebugScreen({super.key});

  @override
  ConsumerState<EducationDebugScreen> createState() =>
      _EducationDebugScreenState();
}

class _EducationDebugScreenState extends ConsumerState<EducationDebugScreen> {
  List<GameEvent> _educationEvents = [];
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
    final debugController = ref.read(debugControllerProvider);
    final events = await debugController.getAllEvents();
    final educationEvents = events
        .where(
          (e) =>
              e.triggerConditions.requiredProgramIds != null &&
              e.triggerConditions.requiredProgramIds!.isNotEmpty,
        )
        .toList();
    if (mounted) {
      setState(() {
        _educationEvents = educationEvents;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lifeState = ref.watch(lifeControllerProvider);
    final life = lifeState.currentLife;
    final educationActions = lifeState.educationActions;
    final debugController = ref.read(debugControllerProvider);
    if (life == null) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButtonLeading(),
          title: const Text('Education Debug'),
        ),
        body: const Center(child: Text('Load a life to use education debug')),
      );
    }
    final educationSection = life.state.sections
        .where((s) => s.type == SectionType.education)
        .firstOrNull;
    final sectionPerf = educationSection?.performance ?? 50;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: const Text('Education Debug'),
      ),
      body: ListView(
        padding: kPaddingAll16,
        children: [
          const DebugSectionHeader(title: 'Editable Values'),
          DebugEditableValueTile(
            label: 'Education section performance',
            value: sectionPerf,
            onEdit: () => _showEditDialog(
              context,
              'Education section performance',
              sectionPerf.toString(),
              (v) => debugController.debugSetSectionPerformance(
                SectionType.education,
                int.tryParse(v) ?? sectionPerf,
              ),
            ),
          ),
          const DebugSectionHeader(title: 'Multipliers'),
          if (life.state.healthState != null &&
              life.state.healthState!.conditions.isNotEmpty) ...[
            const DebugSectionHeader(title: 'Condition study effects'),
            ...life.state.healthState!.conditions.map(
              (c) => DebugMultiplierTile(
                label: '${c.name} study perf',
                value: c.studyPerformanceEffect.toStringAsFixed(1),
              ),
            ),
          ],
          const DebugSectionHeader(title: 'Education Actions'),
          ...educationActions.map((action) {
            final effects = _actionEffectsSummary(action);
            return DebugActionEventTile(
              title: action.name,
              description: action.description,
              effectsSummary: effects,
              onTrigger: () => debugController.debugPerformAction(action),
            );
          }),
          const DebugSectionHeader(title: 'Education Events'),
          ..._educationEvents.map((event) {
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
