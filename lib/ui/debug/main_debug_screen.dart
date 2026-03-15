import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/core/models/hidden_metrics.dart';
import 'package:alma/core/models/enums/hidden_metric_type.dart';
import 'package:alma/core/models/enums/skill_type.dart';
import 'package:alma/providers/debug/debug_controller.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_section_header.dart';
import 'package:alma/ui/debug/widgets/debug_editable_value_tile.dart';

class MainDebugScreen extends ConsumerWidget {
  const MainDebugScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Life? life = ref.watch(lifeControllerProvider).currentLife;
    final soul = ref.watch(soulControllerProvider).currentSoul;
    final DebugController debugController = ref.read(debugControllerProvider);
    final theme = Theme.of(context);
    final bool hasLife = life != null;
    final bool hasSoul = soul != null;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: const Text('Debug'),
      ),
      body: !hasLife && !hasSoul
          ? _buildEmptyMessage(context, theme)
          : _buildContent(
              context,
              ref,
              life,
              debugController,
              theme,
              hasLife,
              hasSoul,
            ),
    );
  }

  Widget _buildEmptyMessage(BuildContext context, ThemeData theme) {
    return Center(
      child: Padding(
        padding: kPaddingAll24,
        child: Text(
          'Load a soul or life to use debug features',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    Life? life,
    DebugController debugController,
    ThemeData theme,
    bool hasLife,
    bool hasSoul,
  ) {
    return ListView(
      padding: kPaddingAll16,
      children: [
        const DebugSectionHeader(title: 'Navigation'),
        if (hasSoul)
          _DebugNavButton(
            label: 'Soul Debug',
            onPressed: () => context.push('/debug/soul'),
          ),
        if (hasLife) ...[
          _DebugNavButton(
            label: 'Health Debug',
            onPressed: () => context.push('/debug/health'),
          ),
          _DebugNavButton(
            label: 'Work Debug',
            onPressed: () => context.push('/debug/work'),
          ),
          _DebugNavButton(
            label: 'Education Debug',
            onPressed: () => context.push('/debug/education'),
          ),
          _DebugNavButton(
            label: 'Social Debug',
            onPressed: () => context.push('/debug/social'),
          ),
        ],
        if (hasSoul && !hasLife)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kSpacing16),
            child: Text(
              'No life loaded. Use Soul Debug to edit soul characteristics.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        if (hasLife) _buildLifeContent(context, life!, debugController, theme),
      ],
    );
  }

  Widget _buildLifeContent(
    BuildContext context,
    Life life,
    DebugController debugController,
    ThemeData theme,
  ) {
    final state = life.state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DebugSectionHeader(title: 'General'),
        DebugEditableValueTile(
          label: 'Money',
          value: state.money,
          onEdit: () => _showEditDialog(
            context,
            'Money',
            state.money.toString(),
            (v) => debugController.debugSetMoney(int.tryParse(v) ?? state.money),
          ),
        ),
        DebugEditableValueTile(
          label: 'Health',
          value: state.displayHealth,
          onEdit: () => _showEditDialog(
            context,
            'Health',
            state.displayHealth.toString(),
            (v) => debugController.debugSetHealth(int.tryParse(v) ?? state.displayHealth),
          ),
        ),
        if (state.healthState != null) ...[
          DebugEditableValueTile(
            label: 'Physical Health',
            value: state.healthState!.physicalHealth,
            valueFormatter: (v) => (v as double).toStringAsFixed(1),
            onEdit: () => _showEditDialog(
              context,
              'Physical Health',
              state.healthState!.physicalHealth.toStringAsFixed(1),
              (v) => debugController.debugSetPhysicalHealth(
                double.tryParse(v) ?? state.healthState!.physicalHealth,
              ),
            ),
          ),
          DebugEditableValueTile(
            label: 'Mental Health',
            value: state.healthState!.mentalHealth,
            valueFormatter: (v) => (v as double).toStringAsFixed(1),
            onEdit: () => _showEditDialog(
              context,
              'Mental Health',
              state.healthState!.mentalHealth.toStringAsFixed(1),
              (v) => debugController.debugSetMentalHealth(
                double.tryParse(v) ?? state.healthState!.mentalHealth,
              ),
            ),
          ),
          DebugEditableValueTile(
            label: 'Stress',
            value: state.healthState!.stress,
            valueFormatter: (v) => (v as double).toStringAsFixed(1),
            onEdit: () => _showEditDialog(
              context,
              'Stress',
              state.healthState!.stress.toStringAsFixed(1),
              (v) => debugController.debugSetStress(
                double.tryParse(v) ?? state.healthState!.stress,
              ),
            ),
          ),
        ],
        DebugEditableValueTile(
          label: 'Time Remaining',
          value: state.timeRemaining,
          onEdit: () => _showEditDialog(
            context,
            'Time Remaining',
            state.timeRemaining.toString(),
            (v) => debugController.debugSetTimeRemaining(
              int.tryParse(v) ?? state.timeRemaining,
            ),
          ),
        ),
        DebugEditableValueTile(
          label: 'Age',
          value: state.age,
          onEdit: () => _showEditDialog(
            context,
            'Age',
            state.age.toString(),
            (v) => debugController.debugSetAge(int.tryParse(v) ?? state.age),
          ),
        ),
        DebugEditableValueTile(
          label: 'Current Year',
          value: state.currentYear,
          onEdit: () => _showEditDialog(
            context,
            'Current Year',
            state.currentYear.toString(),
            (v) => debugController.debugSetCurrentYear(
              int.tryParse(v) ?? state.currentYear,
            ),
          ),
        ),
        const DebugSectionHeader(title: 'Skills'),
        ...SkillType.values.map((type) {
          final value = state.skills.getValue(type);
          return DebugEditableValueTile(
            label: _skillLabel(type),
            value: value,
            onEdit: () => _showEditDialog(
              context,
              _skillLabel(type),
              value.toString(),
              (v) => debugController.debugSetSkill(
                type,
                int.tryParse(v) ?? value,
              ),
            ),
          );
        }),
        const DebugSectionHeader(title: 'Hidden Metrics'),
        ...HiddenMetricType.values.map((type) {
          final value = state.hiddenMetrics.getValue(type);
          return DebugEditableValueTile(
            label: _hiddenMetricLabel(type),
            value: value,
            valueFormatter: (v) => (v as double).toStringAsFixed(2),
            onEdit: () => _showEditDialog(
              context,
              _hiddenMetricLabel(type),
              value.toStringAsFixed(2),
              (v) => debugController.debugSetHiddenMetric(
                type,
                double.tryParse(v) ?? value,
              ),
            ),
          );
        }),
      ],
    );
  }

  static String _skillLabel(SkillType type) {
    switch (type) {
      case SkillType.intelligence:
        return 'Intelligence';
      case SkillType.creativity:
        return 'Creativity';
      case SkillType.communication:
        return 'Communication';
      case SkillType.emotionalStability:
        return 'Emotional Stability';
      case SkillType.fitness:
        return 'Fitness';
    }
  }

  static String _hiddenMetricLabel(HiddenMetricType type) {
    switch (type) {
      case HiddenMetricType.loyalty:
        return 'Loyalty';
      case HiddenMetricType.compassion:
        return 'Compassion';
      case HiddenMetricType.integrity:
        return 'Integrity';
      case HiddenMetricType.ambition:
        return 'Ambition';
      case HiddenMetricType.courage:
        return 'Courage';
      case HiddenMetricType.humility:
        return 'Humility';
      case HiddenMetricType.discipline:
        return 'Discipline';
      case HiddenMetricType.curiosity:
        return 'Curiosity';
    }
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

class _DebugNavButton extends StatelessWidget {
  const _DebugNavButton({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: const Icon(Icons.chevron_right),
      onTap: onPressed,
    );
  }
}
