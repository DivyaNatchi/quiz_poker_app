//lib/theme.dart
import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 201, 73, 171),
      surfaceTint: Color(0xff824c75),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd7f1),
      onPrimaryContainer: Color(0xff68355d),
      secondary: Color(0xff6f5767),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff9daed),
      onSecondaryContainer: Color(0xff56404f),
      tertiary: Color(0xff815342),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdbce),
      onTertiaryContainer: Color(0xff663c2c),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff201a1e),
      onSurfaceVariant: Color(0xff4f444a),
      outline: Color(0xff80747b),
      outlineVariant: Color(0xffd2c2ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e33),
      inversePrimary: Color(0xfff5b2e1),
      primaryFixed: Color(0xffffd7f1),
      onPrimaryFixed: Color(0xff35082f),
      primaryFixedDim: Color(0xfff5b2e1),
      onPrimaryFixedVariant: Color(0xff68355d),
      secondaryFixed: Color(0xfff9daed),
      onSecondaryFixed: Color(0xff271623),
      secondaryFixedDim: Color(0xffdcbed0),
      onSecondaryFixedVariant: Color(0xff56404f),
      tertiaryFixed: Color(0xffffdbce),
      onTertiaryFixed: Color(0xff321206),
      tertiaryFixedDim: Color(0xfff5b9a3),
      onTertiaryFixedVariant: Color(0xff663c2c),
      surfaceDim: Color(0xffe4d7dc),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef0f6),
      surfaceContainer: Color(0xfff8eaf0),
      surfaceContainerHigh: Color(0xfff2e5ea),
      surfaceContainerHighest: Color(0xffecdfe5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff55244b),
      surfaceTint: Color(0xff824c75),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff935a85),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff44303e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff7e6676),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff522c1d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff92614f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff150f13),
      onSurfaceVariant: Color(0xff3d333a),
      outline: Color(0xff5b4f56),
      outlineVariant: Color(0xff766a71),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e33),
      inversePrimary: Color(0xfff5b2e1),
      primaryFixed: Color(0xff935a85),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff78436b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff7e6676),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff654e5d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff92614f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff764a39),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd0c3c9),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef0f6),
      surfaceContainer: Color(0xfff2e5ea),
      surfaceContainerHigh: Color(0xffe6d9df),
      surfaceContainerHighest: Color(0xffdbced4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff491a40),
      surfaceTint: Color(0xff824c75),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6a375f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff392634),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff584352),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff462214),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff693e2e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff33292f),
      outlineVariant: Color(0xff51464d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e33),
      inversePrimary: Color(0xfff5b2e1),
      primaryFixed: Color(0xff6a375f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff512147),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff584352),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff402d3b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff693e2e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4e291a),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2b6bb),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbedf3),
      surfaceContainer: Color(0xffecdfe5),
      surfaceContainerHigh: Color(0xffded1d7),
      surfaceContainerHighest: Color(0xffd0c3c9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff5b2e1),
      surfaceTint: Color(0xfff5b2e1),
      onPrimary: Color(0xff4e1e45),
      primaryContainer: Color(0xff68355d),
      onPrimaryContainer: Color(0xffffd7f1),
      secondary: Color(0xffdcbed0),
      onSecondary: Color(0xff3e2a38),
      secondaryContainer: Color(0xff56404f),
      onSecondaryContainer: Color(0xfff9daed),
      tertiary: Color(0xfff5b9a3),
      onTertiary: Color(0xff4b2618),
      tertiaryContainer: Color(0xff663c2c),
      onTertiaryContainer: Color(0xffffdbce),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff181216),
      onSurface: Color(0xffecdfe5),
      onSurfaceVariant: Color(0xffd2c2ca),
      outline: Color(0xff9b8d94),
      outlineVariant: Color(0xff4f444a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff824c75),
      primaryFixed: Color(0xffffd7f1),
      onPrimaryFixed: Color(0xff35082f),
      primaryFixedDim: Color(0xfff5b2e1),
      onPrimaryFixedVariant: Color(0xff68355d),
      secondaryFixed: Color(0xfff9daed),
      onSecondaryFixed: Color(0xff271623),
      secondaryFixedDim: Color(0xffdcbed0),
      onSecondaryFixedVariant: Color(0xff56404f),
      tertiaryFixed: Color(0xffffdbce),
      onTertiaryFixed: Color(0xff321206),
      tertiaryFixedDim: Color(0xfff5b9a3),
      onTertiaryFixedVariant: Color(0xff663c2c),
      surfaceDim: Color(0xff181216),
      surfaceBright: Color(0xff3f373c),
      surfaceContainerLowest: Color(0xff120c10),
      surfaceContainerLow: Color(0xff201a1e),
      surfaceContainer: Color(0xff241e22),
      surfaceContainerHigh: Color(0xff2f282c),
      surfaceContainerHighest: Color(0xff3a3337),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffceef),
      surfaceTint: Color(0xfff5b2e1),
      onPrimary: Color(0xff411339),
      primaryContainer: Color(0xffba7daa),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff3d4e6),
      onSecondary: Color(0xff32202d),
      secondaryContainer: Color(0xffa4899a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd3c3),
      onTertiary: Color(0xff3e1c0e),
      tertiaryContainer: Color(0xffba8470),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff181216),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe8d8e0),
      outline: Color(0xffbdaeb6),
      outlineVariant: Color(0xff9a8d94),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff69365e),
      primaryFixed: Color(0xffffd7f1),
      onPrimaryFixed: Color(0xff280023),
      primaryFixedDim: Color(0xfff5b2e1),
      onPrimaryFixedVariant: Color(0xff55244b),
      secondaryFixed: Color(0xfff9daed),
      onSecondaryFixed: Color(0xff1c0b18),
      secondaryFixedDim: Color(0xffdcbed0),
      onSecondaryFixedVariant: Color(0xff44303e),
      tertiaryFixed: Color(0xffffdbce),
      onTertiaryFixed: Color(0xff250801),
      tertiaryFixedDim: Color(0xfff5b9a3),
      onTertiaryFixedVariant: Color(0xff522c1d),
      surfaceDim: Color(0xff181216),
      surfaceBright: Color(0xff4a4247),
      surfaceContainerLowest: Color(0xff0b0609),
      surfaceContainerLow: Color(0xff221c20),
      surfaceContainer: Color(0xff2d262a),
      surfaceContainerHigh: Color(0xff383035),
      surfaceContainerHighest: Color(0xff433b40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeaf5),
      surfaceTint: Color(0xfff5b2e1),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfff1aedd),
      onPrimaryContainer: Color(0xff1d0019),
      secondary: Color(0xffffeaf5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd8bacd),
      onSecondaryContainer: Color(0xff150612),
      tertiary: Color(0xffffece6),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff1b59f),
      onTertiaryContainer: Color(0xff1c0400),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff181216),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfffcebf4),
      outlineVariant: Color(0xffcebec6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff69365e),
      primaryFixed: Color(0xffffd7f1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfff5b2e1),
      onPrimaryFixedVariant: Color(0xff280023),
      secondaryFixed: Color(0xfff9daed),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffdcbed0),
      onSecondaryFixedVariant: Color(0xff1c0b18),
      tertiaryFixed: Color(0xffffdbce),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff5b9a3),
      onTertiaryFixedVariant: Color(0xff250801),
      surfaceDim: Color(0xff181216),
      surfaceBright: Color(0xff564e52),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff241e22),
      surfaceContainer: Color(0xff362e33),
      surfaceContainerHigh: Color(0xff41393e),
      surfaceContainerHighest: Color(0xff4d4449),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
