import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppTheme {
  /// 🌞 Tema claro
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.mainGreen,
      onPrimary: Colors.white,
      secondary: AppColors.graphite,
      onSecondary: Colors.white,
      error: AppColors.error,
      onError: Colors.white,
      background: AppColors.background,
      onBackground: AppColors.textPrimary,
      surface: AppColors.smokeWhite,
      onSurface: AppColors.graphite,
    ),
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.mainGreen,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.textPrimary),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.graphite,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.mainGreen,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainGreen,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.smokeWhite,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.graphite, width: 0.6),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.mainGreen, width: 1.2),
      ),
      labelStyle: const TextStyle(color: AppColors.textSecondary),
      prefixIconColor: AppColors.graphite,
    ),
  );

  /// 🌚 Tema oscuro (opcional pero coherente)
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.mainGreen,
      onPrimary: Colors.white,
      secondary: AppColors.smokeWhite,
      onSecondary: AppColors.graphite,
      error: AppColors.error,
      onError: Colors.white,
      background: AppColors.graphite,
      onBackground: AppColors.smokeWhite,
      surface: AppColors.graphite,
      onSurface: AppColors.smokeWhite,
    ),
    scaffoldBackgroundColor: AppColors.graphite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.graphite,
      foregroundColor: AppColors.smokeWhite,
      elevation: 0,
    ),
  );
}
