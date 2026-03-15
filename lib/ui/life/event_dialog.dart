import 'package:flutter/material.dart';
import 'package:alma/core/models/event.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';

class EventDialog extends StatelessWidget {
  const EventDialog({
    super.key,
    required this.event,
    required this.onChoiceSelected,
  });

  final GameEvent event;
  final void Function(int choiceIndex) onChoiceSelected;

  @override
  Widget build(BuildContext context) {
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
                event.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              kVerticalGap12,
              Text(
                event.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              kVerticalGap24,
              ...List.generate(event.choices.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: kSpacing8),
                  child: _EventChoiceButton(
                    description: event.choices[index].description,
                    onTap: () => onChoiceSelected(index),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _EventChoiceButton extends StatelessWidget {
  const _EventChoiceButton({required this.description, required this.onTap});

  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: kPaddingAll16,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),
        child: Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
