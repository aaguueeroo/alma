import 'package:flutter/material.dart';
import 'package:alma/app/theme/app_theme.dart';
import 'package:alma/app/router.dart';
import 'package:alma/l10n/app_localizations.dart';

class AlmaApp extends StatelessWidget {
  const AlmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Alma',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
