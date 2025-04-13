import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
  String bodyFontString,
  String displayFontString, {
  Brightness brightness = Brightness.light,
}) {
  final base =
      (brightness == Brightness.dark
          ? ThemeData.dark().textTheme
          : ThemeData.light().textTheme);
  final bodyFont = GoogleFonts.getTextTheme(bodyFontString, base);
  final displayFont = GoogleFonts.getTextTheme(displayFontString, base);

  return base.copyWith(
    displayLarge: displayFont.displayLarge,
    displayMedium: displayFont.displayMedium,
    displaySmall: displayFont.displaySmall,
    headlineLarge: displayFont.headlineLarge,
    headlineMedium: displayFont.headlineMedium,
    headlineSmall: displayFont.headlineSmall,
    titleLarge: displayFont.titleLarge,
    titleMedium: displayFont.titleMedium,
    titleSmall: displayFont.titleSmall,
    bodyLarge: bodyFont.bodyLarge,
    bodyMedium: bodyFont.bodyMedium,
    bodySmall: bodyFont.bodySmall,
    labelLarge: bodyFont.labelLarge,
    labelMedium: bodyFont.labelMedium,
    labelSmall: bodyFont.labelSmall,
  );
}
