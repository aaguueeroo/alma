import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/l10n/app_localizations.dart';

class MainMenuScreen extends ConsumerWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final colorScheme = Theme.of(context).colorScheme;
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final sectionGap = themeExt?.sectionGap ?? 28.0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: padding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  l10n.appTitle,
                  style: themeExt?.narrativeHeadlineLarge.copyWith(
                        fontWeight: FontWeight.w600,
                      ) ??
                      Theme.of(context).textTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onSurface,
                          ),
                ),
                SizedBox(height: sectionGap * 0.5),
                Text(
                  'A Soul\'s Journey',
                  style: themeExt?.narrativeTitleMedium.copyWith(
                        color: themeExt.mutedColor,
                      ) ??
                      Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                ),
                SizedBox(height: sectionGap * 1.5),
                _MenuButton(
                  label: l10n.continueSoul,
                  onPressed: () => context.push('/save-slots'),
                ),
                SizedBox(height: sectionGap),
                _MenuButton(
                  label: l10n.createNewSoul,
                  onPressed: () => context.push('/create-soul'),
                ),
                SizedBox(height: sectionGap),
                _MenuButton(
                  label: l10n.archive,
                  onPressed: () => context.push('/achievements'),
                ),
                SizedBox(height: sectionGap),
                _MenuButton(
                  label: l10n.settings,
                  onPressed: () => context.push('/settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final radius = themeExt?.radiusDefault ?? 12.0;
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: colorScheme.onSurface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
