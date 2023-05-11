import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class AppFont {
  static final TextStyle _bodyLarge =
      _newFont(fontSize: 20, fontWeight: FontWeight.w700);
  static final TextStyle _bodyMedium = _newFont(fontSize: 14);
  static final TextStyle _bodySmall = _newFont(fontSize: 13);

  static final TextStyle _titleLarge = _newFont(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle _newFont({
    TextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) =>
      GoogleFonts.ibmPlexSans(
        textStyle: textStyle,
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      );

  static TextTheme get appFonts => TextTheme(
        bodyLarge: _bodyLarge,
        bodyMedium: _bodyMedium,
        bodySmall: _bodySmall,
        titleLarge: _titleLarge,
      );
}
