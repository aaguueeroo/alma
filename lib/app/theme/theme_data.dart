import 'package:flutter/material.dart';

/// Immutable data defining a full app theme: colors, typography, shape, spacing, motion.
/// Themes are defined in separate files (e.g. [ObsidianIvoryTheme]) and passed to
/// [AppTheme.buildFrom] to produce Flutter [ThemeData].
class AppThemeData {
  const AppThemeData({
    required this.colorScheme,
    required this.uiTextTheme,
    required this.narrativeTextTheme,
    required this.radiusSmall,
    required this.radiusDefault,
    required this.radiusLarge,
    required this.screenPaddingHorizontal,
    required this.screenPaddingVertical,
    required this.sectionGap,
    required this.listItemSpacing,
    required this.fadeDuration,
    required this.cardElevation,
    required this.buttonHeight,
    required this.extension,
  });

  final ColorScheme colorScheme;
  final TextTheme uiTextTheme;
  final TextTheme narrativeTextTheme;
  final double radiusSmall;
  final double radiusDefault;
  final double radiusLarge;
  final double screenPaddingHorizontal;
  final double screenPaddingVertical;
  final double sectionGap;
  final double listItemSpacing;
  final Duration fadeDuration;
  final double cardElevation;
  final double buttonHeight;
  final AppThemeExtension extension;

  EdgeInsets get screenPadding => EdgeInsets.symmetric(
    horizontal: screenPaddingHorizontal,
    vertical: screenPaddingVertical,
  );
}

/// Optional extension for narrative-specific styles and semantic colors.
/// Allows widgets to request narrative vs UI typography and theme-specific semantics.
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.narrativeDisplayLarge,
    required this.narrativeHeadlineLarge,
    required this.narrativeHeadlineMedium,
    required this.narrativeTitleLarge,
    required this.narrativeTitleMedium,
    required this.narrativeBodyLarge,
    required this.narrativeBodyMedium,
    required this.accentColor,
    required this.mutedColor,
    required this.screenPadding,
    required this.sectionGap,
    required this.radiusDefault,
    required this.radiusSmall,
  });

  final TextStyle narrativeDisplayLarge;
  final TextStyle narrativeHeadlineLarge;
  final TextStyle narrativeHeadlineMedium;
  final TextStyle narrativeTitleLarge;
  final TextStyle narrativeTitleMedium;
  final TextStyle narrativeBodyLarge;
  final TextStyle narrativeBodyMedium;
  final Color accentColor;
  final Color mutedColor;
  final EdgeInsets screenPadding;
  final double sectionGap;
  final double radiusDefault;
  final double radiusSmall;

  @override
  AppThemeExtension copyWith({
    TextStyle? narrativeDisplayLarge,
    TextStyle? narrativeHeadlineLarge,
    TextStyle? narrativeHeadlineMedium,
    TextStyle? narrativeTitleLarge,
    TextStyle? narrativeTitleMedium,
    TextStyle? narrativeBodyLarge,
    TextStyle? narrativeBodyMedium,
    Color? accentColor,
    Color? mutedColor,
    EdgeInsets? screenPadding,
    double? sectionGap,
    double? radiusDefault,
    double? radiusSmall,
  }) {
    return AppThemeExtension(
      narrativeDisplayLarge:
          narrativeDisplayLarge ?? this.narrativeDisplayLarge,
      narrativeHeadlineLarge:
          narrativeHeadlineLarge ?? this.narrativeHeadlineLarge,
      narrativeHeadlineMedium:
          narrativeHeadlineMedium ?? this.narrativeHeadlineMedium,
      narrativeTitleLarge: narrativeTitleLarge ?? this.narrativeTitleLarge,
      narrativeTitleMedium: narrativeTitleMedium ?? this.narrativeTitleMedium,
      narrativeBodyLarge: narrativeBodyLarge ?? this.narrativeBodyLarge,
      narrativeBodyMedium: narrativeBodyMedium ?? this.narrativeBodyMedium,
      accentColor: accentColor ?? this.accentColor,
      mutedColor: mutedColor ?? this.mutedColor,
      screenPadding: screenPadding ?? this.screenPadding,
      sectionGap: sectionGap ?? this.sectionGap,
      radiusDefault: radiusDefault ?? this.radiusDefault,
      radiusSmall: radiusSmall ?? this.radiusSmall,
    );
  }

  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) return this;
    return AppThemeExtension(
      narrativeDisplayLarge: TextStyle.lerp(
        narrativeDisplayLarge,
        other.narrativeDisplayLarge,
        t,
      )!,
      narrativeHeadlineLarge: TextStyle.lerp(
        narrativeHeadlineLarge,
        other.narrativeHeadlineLarge,
        t,
      )!,
      narrativeHeadlineMedium: TextStyle.lerp(
        narrativeHeadlineMedium,
        other.narrativeHeadlineMedium,
        t,
      )!,
      narrativeTitleLarge: TextStyle.lerp(
        narrativeTitleLarge,
        other.narrativeTitleLarge,
        t,
      )!,
      narrativeTitleMedium: TextStyle.lerp(
        narrativeTitleMedium,
        other.narrativeTitleMedium,
        t,
      )!,
      narrativeBodyLarge: TextStyle.lerp(
        narrativeBodyLarge,
        other.narrativeBodyLarge,
        t,
      )!,
      narrativeBodyMedium: TextStyle.lerp(
        narrativeBodyMedium,
        other.narrativeBodyMedium,
        t,
      )!,
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      mutedColor: Color.lerp(mutedColor, other.mutedColor, t)!,
      screenPadding: EdgeInsets.lerp(screenPadding, other.screenPadding, t)!,
      sectionGap: sectionGap + (other.sectionGap - sectionGap) * t,
      radiusDefault: radiusDefault + (other.radiusDefault - radiusDefault) * t,
      radiusSmall: radiusSmall + (other.radiusSmall - radiusSmall) * t,
    );
  }
}
