import 'package:flutter/material.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/app/theme/themes/obsidian_ivory_theme.dart';

/// Builds Flutter [ThemeData] from app-level theme data.
/// Use [obsidianIvory] as the current theme; add more theme getters as needed.
class AppTheme {
  AppTheme._();

  /// Single theme: Obsidian + Warm Ivory. Use for both theme and darkTheme.
  static ThemeData get obsidianIvory => buildFrom(ObsidianIvoryTheme.data);

  /// Builds [ThemeData] from [AppThemeData]. Use this when adding new themes.
  static ThemeData buildFrom(AppThemeData data) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: data.colorScheme,
      scaffoldBackgroundColor: data.colorScheme.surface,
      textTheme: data.uiTextTheme,
      primaryTextTheme: data.narrativeTextTheme,
      cardTheme: CardThemeData(
        elevation: data.cardElevation,
        color: data.colorScheme.surfaceContainerHighest,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(data.radiusDefault),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(data.buttonHeight),
          backgroundColor: data.colorScheme.primaryContainer,
          foregroundColor: data.colorScheme.onPrimaryContainer,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(data.radiusDefault),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: Size.fromHeight(data.buttonHeight),
          foregroundColor: data.colorScheme.onSurface,
          side: BorderSide(color: data.colorScheme.outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(data.radiusDefault),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: data.colorScheme.onSurface,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: data.colorScheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(data.radiusDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(data.radiusDefault),
          borderSide: BorderSide(color: data.colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(data.radiusDefault),
          borderSide: BorderSide(color: data.colorScheme.primary),
        ),
        labelStyle: data.uiTextTheme.bodyMedium?.copyWith(
          color: data.colorScheme.onSurfaceVariant,
        ),
        hintStyle: data.uiTextTheme.bodyMedium?.copyWith(
          color: data.colorScheme.outline,
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: data.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(data.radiusLarge),
        ),
        titleTextStyle: data.uiTextTheme.titleLarge?.copyWith(
          color: data.colorScheme.onSurface,
        ),
        contentTextStyle: data.uiTextTheme.bodyMedium?.copyWith(
          color: data.colorScheme.onSurface,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: data.colorScheme.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: data.colorScheme.onSurface),
        titleTextStyle: data.uiTextTheme.titleLarge?.copyWith(
          color: data.colorScheme.onSurface,
        ),
      ),
      iconTheme: IconThemeData(color: data.colorScheme.onSurface),
      extensions: <ThemeExtension<dynamic>>[data.extension],
    );
  }
}
