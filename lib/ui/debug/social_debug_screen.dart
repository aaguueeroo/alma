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

class SocialDebugScreen extends ConsumerStatefulWidget {
  const SocialDebugScreen({super.key});

  @override
  ConsumerState<SocialDebugScreen> createState() => _SocialDebugScreenState();
}

class _SocialDebugScreenState extends ConsumerState<SocialDebugScreen> {
  List<GameEvent> _socialEvents = [];
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
    final socialEvents = events
        .where(
          (e) => e.choices.any(
            (c) =>
                c.consequences.relationshipTargetId != null ||
                c.consequences.relationshipChange != 0,
          ),
        )
        .toList();
    if (mounted) {
      setState(() {
        _socialEvents = socialEvents;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lifeState = ref.watch(lifeControllerProvider);
    final life = lifeState.currentLife;
    final socialActions = lifeState.socialActions;
    final debugController = ref.read(debugControllerProvider);
    if (life == null) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButtonLeading(),
          title: const Text('Social Debug'),
        ),
        body: const Center(child: Text('Load a life to use social debug')),
      );
    }
    final relationships =
        life.state.socialState?.relationships ?? life.state.relationships;
    final socialSection = life.state.sections
        .where((s) => s.type == SectionType.social)
        .firstOrNull;
    final sectionPerf = socialSection?.performance ?? 50;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: const Text('Social Debug'),
      ),
      body: ListView(
        padding: kPaddingAll16,
        children: [
          const DebugSectionHeader(title: 'Editable Values'),
          DebugEditableValueTile(
            label: 'Social section performance',
            value: sectionPerf,
            onEdit: () => _showEditDialog(
              context,
              'Social section performance',
              sectionPerf.toString(),
              (v) => debugController.debugSetSectionPerformance(
                SectionType.social,
                int.tryParse(v) ?? sectionPerf,
              ),
            ),
          ),
          const DebugSectionHeader(title: 'Relationship values'),
          ...relationships.map((rel) {
            final displayName = rel.npc.alias ?? rel.npc.name;
            return DebugEditableValueTile(
              label: '$displayName (${rel.displayTypeId})',
              value: rel.value,
              onEdit: () => _showEditDialog(
                context,
                '$displayName value',
                rel.value.toString(),
                (v) => debugController.debugSetRelationshipValue(
                  rel.npc.id,
                  int.tryParse(v) ?? rel.value,
                ),
              ),
            );
          }),
          const DebugSectionHeader(title: 'Multipliers'),
          if (life.state.healthState != null &&
              life.state.healthState!.conditions.isNotEmpty) ...[
            const DebugSectionHeader(title: 'Condition relationship effects'),
            ...life.state.healthState!.conditions.map(
              (c) => DebugMultiplierTile(
                label: '${c.name} relationship',
                value: c.relationshipEffect.toStringAsFixed(1),
              ),
            ),
          ],
          const DebugSectionHeader(title: 'Social Actions'),
          ...socialActions.map((action) {
            final effects = _actionEffectsSummary(action);
            return DebugActionEventTile(
              title: action.name,
              description: action.description,
              effectsSummary: effects,
              onTrigger: () {
                final npcIds = relationships.map((r) => r.npc.id).toList();
                if (action.targetNpcId != null &&
                    npcIds.contains(action.targetNpcId)) {
                  ref.read(lifeControllerProvider.notifier).performSocialAction(
                    action,
                    [action.targetNpcId!],
                  );
                } else if (npcIds.isNotEmpty) {
                  ref.read(lifeControllerProvider.notifier).performSocialAction(
                    action,
                    [npcIds.first],
                  );
                } else {
                  debugController.debugPerformAction(action);
                }
              },
            );
          }),
          const DebugSectionHeader(title: 'Social Events'),
          ..._socialEvents.map((event) {
            final effects = event.choices
                .map(
                  (c) =>
                      'rel${c.consequences.relationshipChange >= 0 ? '+' : ''}${c.consequences.relationshipChange}',
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
    if (action.relationshipEffects.affection != 0 ||
        action.relationshipEffects.trust != 0 ||
        action.relationshipEffects.respect != 0) {
      parts.add('rel: ${action.relationshipEffects}');
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
