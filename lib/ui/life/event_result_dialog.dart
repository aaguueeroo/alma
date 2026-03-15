import 'package:flutter/material.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';

class EventResultDialog extends StatelessWidget {
  const EventResultDialog({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Dialog(
      insetPadding: kPaddingHorizontal16,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxContentWidth),
        child: Padding(
          padding: kPaddingAll24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.eventResultDialogTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              kVerticalGap12,
              Text(
                message,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              kVerticalGap24,
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(l10n.ok),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
