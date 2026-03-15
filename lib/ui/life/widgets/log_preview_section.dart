import 'package:flutter/material.dart';
import 'package:alma/core/models/game_log.dart';
import 'package:alma/core/models/social/relationship.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/ui/life/widgets/log_list_widget.dart';

class LogPreviewSection extends StatelessWidget {
  const LogPreviewSection({
    super.key,
    required this.title,
    required this.emptyMessage,
    this.gameLogs = const [],
    this.logs = const [],
    this.relationships,
    this.contextNpcId,
  });

  final String title;
  final String emptyMessage;
  final List<GameLog> gameLogs;
  final List<String> logs;
  final List<Relationship>? relationships;
  final String? contextNpcId;

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

class _LogPreviewDialog extends StatelessWidget {
  const _LogPreviewDialog({
    required this.title,
    required this.emptyMessage,
    required this.gameLogs,
    required this.logs,
    this.relationships,
    this.contextNpcId,
  });

  final String title;
  final String emptyMessage;
  final List<GameLog> gameLogs;
  final List<String> logs;
  final List<Relationship>? relationships;
  final String? contextNpcId;

  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.of(context).size.height * 0.4;
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
                        title,
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
              kVerticalGap12,
              Flexible(
                child: SingleChildScrollView(
                  child: LogListWidget(
                    title: '',
                    emptyMessage: emptyMessage,
                    gameLogs: gameLogs,
                    logs: logs,
                    relationships: relationships,
                    contextNpcId: contextNpcId,
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
