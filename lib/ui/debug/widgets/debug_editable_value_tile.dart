import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';

class DebugEditableValueTile extends StatelessWidget {
  const DebugEditableValueTile({
    super.key,
    required this.label,
    required this.value,
    required this.onEdit,
    this.valueFormatter,
  });

  final String label;
  final dynamic value;
  final VoidCallback onEdit;
  final String Function(dynamic value)? valueFormatter;

  String get _displayValue {
    if (valueFormatter != null) return valueFormatter!(value);
    return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(label, style: theme.textTheme.bodyMedium),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _displayValue,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          kHorizontalGap8,
          IconButton(
            icon: const Icon(Icons.edit_outlined, size: 20),
            onPressed: onEdit,
            tooltip: 'Edit',
          ),
        ],
      ),
    );
  }
}
