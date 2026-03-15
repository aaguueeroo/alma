import 'package:flutter/material.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/enums/log_category.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';

/// Configuration for a single filter chip option in the log preview dialog.
class LogPreviewFilterOption {
  const LogPreviewFilterOption({
    required this.label,
    this.category,
  });

  final String label;
  final LogCategory? category;
}

class LogPreviewSection extends StatelessWidget {
  const LogPreviewSection({
    super.key,
    required this.title,
    required this.emptyMessage,
    this.gameLogs = const [],
    this.logs = const [],
    this.relationships,
    this.contextNpcId,
    this.filterOptions,
  });

  final String title;
  final String emptyMessage;
  final List<GameLog> gameLogs;
  final List<String> logs;
  final List<Relationship>? relationships;
  final String? contextNpcId;
  /// When provided, the dialog shows filter chips to filter logs by category.
  final List<LogPreviewFilterOption>? filterOptions;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final bool isEmpty = gameLogs.isEmpty && logs.isEmpty;
    final int previewCount = kLogPreviewVisibleCount;
    final List<GameLog> previewGameLogs = gameLogs.take(previewCount).toList();
    final int remainingSlots = previewCount - previewGameLogs.length;
    final List<String> previewLogs =
        logs.take(remainingSlots > 0 ? remainingSlots : 0).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: colors.onSurface,
                fontWeight: FontWeight.w600,
              ),
        ),
        kVerticalGap12,
        if (isEmpty)
          _EmptyLogMessage(message: emptyMessage)
        else
          Material(
            color: Color.lerp(colors.surface, Colors.white, 0.06)!,
            borderRadius: BorderRadius.circular(kBorderRadius),
            child: InkWell(
              onTap: () => _showLogsDialog(context),
              borderRadius: BorderRadius.circular(kBorderRadius),
              child: SizedBox(
                height: kLogPreviewMaxHeight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  child: Padding(
                    padding: kPaddingAll12,
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: LogListWidget(
                        title: '',
                        emptyMessage: '',
                        gameLogs: previewGameLogs,
                        logs: previewLogs,
                        relationships: relationships,
                        contextNpcId: contextNpcId,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _showLogsDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => _LogPreviewDialog(
        title: title,
        emptyMessage: emptyMessage,
        gameLogs: gameLogs,
        logs: logs,
        relationships: relationships,
        contextNpcId: contextNpcId,
        filterOptions: filterOptions,
      ),
    );
  }
}

class _EmptyLogMessage extends StatelessWidget {
  const _EmptyLogMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: kPaddingAll24,
      decoration: BoxDecoration(
        color: Color.lerp(colors.surface, Colors.white, 0.06)!,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colors.onSurfaceVariant,
              fontStyle: FontStyle.italic,
            ),
      ),
    );
  }
}

class _LogPreviewDialog extends StatefulWidget {
  const _LogPreviewDialog({
    required this.title,
    required this.emptyMessage,
    required this.gameLogs,
    required this.logs,
    this.relationships,
    this.contextNpcId,
    this.filterOptions,
  });

  final String title;
  final String emptyMessage;
  final List<GameLog> gameLogs;
  final List<String> logs;
  final List<Relationship>? relationships;
  final String? contextNpcId;
  final List<LogPreviewFilterOption>? filterOptions;

  @override
  State<_LogPreviewDialog> createState() => _LogPreviewDialogState();
}

class _LogPreviewDialogState extends State<_LogPreviewDialog> {
  LogCategory? _selectedFilter;

  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.of(context).size.height * 0.5;
    final List<GameLog> filteredGameLogs = widget.filterOptions == null
        ? widget.gameLogs
        : _selectedFilter == null
            ? widget.gameLogs
            : widget.gameLogs
                .where((GameLog log) => log.category == _selectedFilter)
                .toList();
    final List<String> filteredLogs = widget.filterOptions == null
        ? widget.logs
        : widget.logs;
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
          maxWidth: double.infinity,
        ),
        child: Padding(
          padding: kPaddingAll16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                    tooltip: MaterialLocalizations.of(
                      context,
                    ).closeButtonTooltip,
                  ),
                ],
              ),
              if (widget.filterOptions != null && widget.filterOptions!.isNotEmpty) ...[
                kVerticalGap12,
                SizedBox(
                  height: kSpacing32 + kSpacing8,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: widget.filterOptions!
                        .map(
                          (LogPreviewFilterOption option) => Padding(
                            padding: const EdgeInsets.only(right: kSpacing8),
                            child: FilterChip(
                              label: Text(option.label),
                              selected: _selectedFilter == option.category,
                              onSelected: (_) {
                                setState(() => _selectedFilter = option.category);
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
              kVerticalGap12,
              Flexible(
                child: SingleChildScrollView(
                  child: LogListWidget(
                    title: '',
                    emptyMessage: widget.emptyMessage,
                    gameLogs: filteredGameLogs,
                    logs: filteredLogs,
                    relationships: widget.relationships,
                    contextNpcId: widget.contextNpcId,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
