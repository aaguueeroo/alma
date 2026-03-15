import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';

class GameOverScreen extends ConsumerWidget {
  const GameOverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding = themeExt?.screenPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final colorScheme = Theme.of(context).colorScheme;
    final mutedColor = themeExt?.mutedColor ?? colorScheme.onSurfaceVariant;
    final radius = themeExt?.radiusDefault ?? 12.0;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        actions: const [
          DebugAppBarButton(navigationContext: DebugNavigationContext.mainMenu),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: padding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.sentiment_dissatisfied,
                  size: 128,
                  color: colorScheme.error,
                ),
                const SizedBox(height: 32),
                Text(
                  l10n.gameOver,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.error,
                        letterSpacing: 2,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  l10n.gameOverMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: mutedColor,
                      ),
                ),
                const SizedBox(height: 48),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      if (context.canPop()) {
                        while (context.mounted && context.canPop()) {
                          context.pop();
                        }
                      } else {
                        context.go('/');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.errorContainer,
                      foregroundColor: colorScheme.onErrorContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius),
                      ),
                    ),
                    child: Text(l10n.returnToMenu),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
