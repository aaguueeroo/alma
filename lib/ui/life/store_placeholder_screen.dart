import 'package:flutter/material.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';

class StorePlaceholderScreen extends StatelessWidget {
  const StorePlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.store),
        actions: const [
          DebugAppBarButton(navigationContext: DebugNavigationContext.mainMenu),
        ],
      ),
      body: Center(
        child: Padding(
          padding: kPaddingScreen,
          child: Text(
            l10n.notImplementedYet,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: colors.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
