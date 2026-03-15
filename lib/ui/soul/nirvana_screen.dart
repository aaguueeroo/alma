import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';

class NirvanaScreen extends ConsumerWidget {
  const NirvanaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding =
        themeExt?.screenPadding ??
        const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final accentColor =
        themeExt?.accentColor ?? Theme.of(context).colorScheme.secondary;
    final radius = themeExt?.radiusDefault ?? 12.0;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: accentColor),
        actions: const [
          DebugAppBarButton(navigationContext: DebugNavigationContext.mainMenu),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              accentColor.withValues(alpha: 0.15),
              accentColor.withValues(alpha: 0.08),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: padding,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.emoji_events, size: 128, color: accentColor),
                  const SizedBox(height: 32),
                  Text(
                    l10n.nirvana,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.nirvanaMessage,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
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
                        backgroundColor: Theme.of(
                          context,
                        ).colorScheme.primaryContainer,
                        foregroundColor: Theme.of(
                          context,
                        ).colorScheme.onPrimaryContainer,
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
      ),
    );
  }
}
