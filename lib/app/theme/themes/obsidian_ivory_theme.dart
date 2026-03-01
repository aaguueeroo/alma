import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alma/app/theme/theme_data.dart';

/// Obsidian + Warm Ivory: minimal, dark, symbolic, slightly unsettling but elegant.
/// Black/deep charcoal background, warm beige text, subtle accent and muted destructive.
class ObsidianIvoryTheme {
  ObsidianIvoryTheme._();

  static const Color _surface = Color(0xFF1A1A1A);
  static const Color _surfaceVariant = Color(0xFF252525);
  static const Color _primary = Color(0xFFE8E0D5);
  static const Color _onPrimary = Color(0xFF1A1A1A);
  static const Color _primaryContainer = Color(0xFF2A2A2A);
  static const Color _onPrimaryContainer = Color(0xFFD4C4B0);
  static const Color _outline = Color(0xFF6B6359);
  static const Color _outlineVariant = Color(0xFF4A4540);
  static const Color _muted = Color(0xFF9A9187);
  static const Color _accent = Color(0xFFB8A070);
  static const Color _error = Color(0xFF8B5A50);
  static const Color _onError = Color(0xFFE8E0D5);
  static const Color _errorContainer = Color(0xFF5C3A34);
  static const Color _onErrorContainer = Color(0xFFE8D4D0);

  static ColorScheme get _colorScheme => const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: _primary,
        onPrimary: _onPrimary,
        primaryContainer: _primaryContainer,
        onPrimaryContainer: _onPrimaryContainer,
        secondary: _accent,
        onSecondary: _onPrimary,
        secondaryContainer: _surfaceVariant,
        onSecondaryContainer: _onPrimaryContainer,
        tertiary: _muted,
        onTertiary: _onPrimary,
        surface: _surface,
        onSurface: _primary,
        surfaceContainerHighest: _surfaceVariant,
        onSurfaceVariant: _muted,
        outline: _outline,
        outlineVariant: _outlineVariant,
        error: _error,
        onError: _onError,
        errorContainer: _errorContainer,
        onErrorContainer: _onErrorContainer,
      );

  static const double _radiusSmall = 8.0;
  static const double _radiusDefault = 12.0;
  static const double _radiusLarge = 16.0;
  static const double _screenPaddingH = 28.0;
  static const double _screenPaddingV = 28.0;
  static const double _sectionGap = 28.0;
  static const double _listItemSpacing = 18.0;
  static const double _cardElevation = 0.0;
  static const double _buttonHeight = 48.0;
  static const Duration _fadeDuration = Duration(milliseconds: 300);

  static const double _narrativeLineHeight = 1.7;
  static const double _uiLineHeight = 1.4;

  static TextTheme get _uiTextTheme {
    return TextTheme(
      displayLarge: GoogleFonts.dmSans(
        fontSize: 32,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: GoogleFonts.dmSans(
        fontSize: 28,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.dmSans(
        fontSize: 24,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      headlineLarge: GoogleFonts.dmSans(
        fontSize: 22,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: GoogleFonts.dmSans(
        fontSize: 20,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.dmSans(
        fontSize: 18,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.dmSans(
        fontSize: 16,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.dmSans(
        fontSize: 14,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.dmSans(
        fontSize: 12,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.dmSans(
        fontSize: 16,
        height: _uiLineHeight,
        color: _primary,
      ),
      bodyMedium: GoogleFonts.dmSans(
        fontSize: 14,
        height: _uiLineHeight,
        color: _primary,
      ),
      bodySmall: GoogleFonts.dmSans(
        fontSize: 12,
        height: _uiLineHeight,
        color: _muted,
      ),
      labelLarge: GoogleFonts.dmSans(
        fontSize: 14,
        height: _uiLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.dmSans(
        fontSize: 12,
        height: _uiLineHeight,
        color: _muted,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.dmSans(
        fontSize: 10,
        height: _uiLineHeight,
        color: _muted,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextTheme get _narrativeTextTheme {
    return TextTheme(
      displayLarge: GoogleFonts.crimsonPro(
        fontSize: 36,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: GoogleFonts.crimsonPro(
        fontSize: 30,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.crimsonPro(
        fontSize: 26,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      headlineLarge: GoogleFonts.crimsonPro(
        fontSize: 24,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: GoogleFonts.crimsonPro(
        fontSize: 22,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.crimsonPro(
        fontSize: 20,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.crimsonPro(
        fontSize: 18,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.crimsonPro(
        fontSize: 16,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.crimsonPro(
        fontSize: 14,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.crimsonPro(
        fontSize: 17,
        height: _narrativeLineHeight,
        color: _primary,
      ),
      bodyMedium: GoogleFonts.crimsonPro(
        fontSize: 15,
        height: _narrativeLineHeight,
        color: _primary,
      ),
      bodySmall: GoogleFonts.crimsonPro(
        fontSize: 13,
        height: _narrativeLineHeight,
        color: _muted,
      ),
      labelLarge: GoogleFonts.crimsonPro(
        fontSize: 14,
        height: _narrativeLineHeight,
        color: _primary,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.crimsonPro(
        fontSize: 12,
        height: _narrativeLineHeight,
        color: _muted,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.crimsonPro(
        fontSize: 11,
        height: _narrativeLineHeight,
        color: _muted,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static AppThemeExtension get _extension => AppThemeExtension(
        narrativeDisplayLarge: _narrativeTextTheme.displayLarge!,
        narrativeHeadlineLarge: _narrativeTextTheme.headlineLarge!,
        narrativeHeadlineMedium: _narrativeTextTheme.headlineMedium!,
        narrativeTitleLarge: _narrativeTextTheme.titleLarge!,
        narrativeTitleMedium: _narrativeTextTheme.titleMedium!,
        narrativeBodyLarge: _narrativeTextTheme.bodyLarge!,
        narrativeBodyMedium: _narrativeTextTheme.bodyMedium!,
        accentColor: _accent,
        mutedColor: _muted,
        screenPadding: EdgeInsets.symmetric(
          horizontal: _screenPaddingH,
          vertical: _screenPaddingV,
        ),
        sectionGap: _sectionGap,
        radiusDefault: _radiusDefault,
        radiusSmall: _radiusSmall,
      );

  static AppThemeData get data => AppThemeData(
        colorScheme: _colorScheme,
        uiTextTheme: _uiTextTheme,
        narrativeTextTheme: _narrativeTextTheme,
        radiusSmall: _radiusSmall,
        radiusDefault: _radiusDefault,
        radiusLarge: _radiusLarge,
        screenPaddingHorizontal: _screenPaddingH,
        screenPaddingVertical: _screenPaddingV,
        sectionGap: _sectionGap,
        listItemSpacing: _listItemSpacing,
        fadeDuration: _fadeDuration,
        cardElevation: _cardElevation,
        buttonHeight: _buttonHeight,
        extension: _extension,
      );
}
