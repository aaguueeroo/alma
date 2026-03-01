import 'package:flutter/material.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/shared/back_button_leading.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.settings),
      ),
      body: Padding(
        padding: padding,
        child: Center(
          child: Text(
            l10n.notImplementedYet,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ),
      ),
    );
  }
}
