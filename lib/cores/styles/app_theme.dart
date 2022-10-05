part of '_styles.dart';

class AppTheme {
  static ThemeData mainTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blue,
      onPrimary: AppColors.white,
      secondary: AppColors.darkBlue,
      onSecondary: AppColors.white,
      tertiary: AppColors.yellow,
      onTertiary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      background: AppColors.white,
      onBackground: AppColors.black,
      surface: AppColors.white,
      onSurface: AppColors.black,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.openSans(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      headlineMedium: GoogleFonts.openSans(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      headlineSmall: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      titleMedium: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      titleSmall: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      labelLarge: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      labelMedium: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      labelSmall: GoogleFonts.openSans(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      bodyLarge: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      bodyMedium: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
        letterSpacing: 0,
      ),
      bodySmall: GoogleFonts.openSans(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
        letterSpacing: 0,
      ),
    ),
    useMaterial3: true,
  );
}
