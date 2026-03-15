import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/core/models/enums/soul_subject_type.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/core/models/soul_subject.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/debug/debug_controller.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_section_header.dart';
import 'package:alma/ui/debug/widgets/debug_editable_value_tile.dart';

class SoulDebugScreen extends ConsumerWidget {
  const SoulDebugScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Soul? soul = ref.watch(soulControllerProvider).currentSoul;
    final DebugController debugController = ref.read(debugControllerProvider);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: const Text('Soul Debug'),
      ),
      body: soul == null
          ? _buildNoSoulMessage(context, theme)
          : _buildContent(context, ref, soul, debugController, theme),
    );
  }

  Widget _buildNoSoulMessage(BuildContext context, ThemeData theme) {
    return Center(
      child: Padding(
        padding: kPaddingAll24,
        child: Text(
          'Load a soul to use soul debug features',
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
    Soul soul,
    DebugController debugController,
    ThemeData theme,
  ) {
    return ListView(
      padding: kPaddingAll16,
      children: [
        const DebugSectionHeader(title: 'General'),
        DebugEditableValueTile(
          label: 'Remaining Lives',
          value: soul.remainingLives,
          onEdit: () => _showEditDialog(
            context,
            'Remaining Lives',
            soul.remainingLives.toString(),
            (v) => debugController.debugSetRemainingLives(
              int.tryParse(v) ?? soul.remainingLives,
            ),
          ),
        ),
        const DebugSectionHeader(title: 'Subjects'),
        ...SoulSubjectType.values.map((type) {
          final SoulSubject subject = soul.subjects.firstWhere(
            (s) => s.type == type,
            orElse: () => SoulSubject(type: type),
          );
          return _SubjectToggleTile(
            label: _subjectLabel(context, type),
            isPassed: subject.isPassed,
            onChanged: (value) =>
                debugController.debugSetSubjectPassed(type, value),
          );
        }),
        const DebugSectionHeader(title: 'Meta Stats'),
        if (soul.metaStats.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kSpacing8),
            child: Text(
              'No meta stats',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          )
        else
          ...soul.metaStats.entries.map((entry) {
            return DebugEditableValueTile(
              label: entry.key,
              value: entry.value,
              onEdit: () => _showEditDialog(
                context,
                entry.key,
                entry.value.toString(),
                (v) => debugController.debugSetMetaStat(
                  entry.key,
                  int.tryParse(v) ?? entry.value,
                ),
              ),
            );
          }),
        ListTile(
          leading: const Icon(Icons.add),
          title: const Text('Add Meta Stat'),
          onTap: () => _showAddMetaStatDialog(context, debugController),
        ),
        if (soul.currentLifeId != null) ...[
          const DebugSectionHeader(title: 'Current Life'),
          ListTile(
            title: Text(
              soul.currentLifeId!,
              style: theme.textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: TextButton(
              onPressed: () => debugController.debugClearCurrentLife(),
              child: const Text('Clear'),
            ),
          ),
        ],
      ],
    );
  }

  String _subjectLabel(BuildContext context, SoulSubjectType type) {
    final l10n = AppLocalizations.of(context)!;
    switch (type) {
      case SoulSubjectType.compassion:
        return l10n.compassion;
      case SoulSubjectType.discipline:
        return l10n.discipline;
      case SoulSubjectType.courage:
        return l10n.courage;
      case SoulSubjectType.wisdom:
        return l10n.wisdom;
      case SoulSubjectType.fun:
        return l10n.fun;
      case SoulSubjectType.humility:
        return l10n.humility;
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

  void _showAddMetaStatDialog(
    BuildContext context,
    DebugController debugController,
  ) {
    final keyController = TextEditingController();
    final valueController = TextEditingController(text: '0');
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Meta Stat'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: keyController,
              decoration: const InputDecoration(labelText: 'Key'),
              autofocus: true,
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(labelText: 'Value'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final key = keyController.text.trim();
              if (key.isNotEmpty) {
                debugController.debugSetMetaStat(
                  key,
                  int.tryParse(valueController.text) ?? 0,
                );
                Navigator.of(ctx).pop();
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

class _SubjectToggleTile extends StatelessWidget {
  const _SubjectToggleTile({
    required this.label,
    required this.isPassed,
    required this.onChanged,
  });

  final String label;
  final bool isPassed;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(label, style: theme.textTheme.bodyMedium),
      trailing: Switch(value: isPassed, onChanged: onChanged),
    );
  }
}
