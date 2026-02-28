import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/l10n/app_localizations.dart';

class MainMenuScreen extends ConsumerWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingScreen,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  l10n.appTitle,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.soulPurple,
                      ),
                ),
                kVerticalGap16,
                Text(
                  'A Soul\'s Journey',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.neutral,
                      ),
                ),
                kVerticalGap48,
                _MenuButton(
                  label: l10n.newGame,
                  onPressed: () => context.go('/create-soul'),
                ),
                kVerticalGap16,
                _MenuButton(
                  label: l10n.loadGame,
                  onPressed: () => context.go('/save-slots'),
                ),
                kVerticalGap16,
                _MenuButton(
                  label: l10n.achievements,
                  onPressed: () => context.go('/achievements'),
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
    return SizedBox(
      width: double.infinity,
      height: kButtonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.soulPurple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
