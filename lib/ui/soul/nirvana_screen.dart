import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/ui/shared/back_button_leading.dart';

class NirvanaScreen extends ConsumerWidget {
  const NirvanaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.soulPurple),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              AppColors.soulPurple.withValues(alpha: 0.3),
              AppColors.soulGold.withValues(alpha: 0.2),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: kPaddingScreen,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.emoji_events,
                    size: kAvatarSizeLarge * 2,
                    color: AppColors.soulGold,
                  ),
                  kVerticalGap32,
                  Text(
                    l10n.nirvana,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.soulGold,
                          letterSpacing: 2,
                        ),
                  ),
                  kVerticalGap16,
                  Text(
                    l10n.nirvanaMessage,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.soulPurple,
                        ),
                  ),
                  kVerticalGap48,
                  SizedBox(
                    width: double.infinity,
                    height: kButtonHeight,
                    child: ElevatedButton(
                      onPressed: () => context.go('/'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.soulGold,
                        foregroundColor: AppColors.soulPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kBorderRadius),
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
