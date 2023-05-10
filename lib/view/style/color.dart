import 'package:flutter/material.dart';

class AppColors {
  static const Color _primary = Color(0xFF008AA7);
  static const Color _onPrimary = Colors.black;
  static const Color _secondary = Color(0xFFEBD75C);
  static const Color _onSecondary = Colors.black;
  static const Color _surface = Color(0xFFE0F7FE);
  static const Color _onSurface = _background;
  static const Color _background = Color(0xFFFFFFFF);
  static const Color _onBackground = Colors.black;
  static const Color _error = Colors.redAccent;
  static const Color _onError = Colors.red;
  static const Brightness _brightness = Brightness.light;

  static ColorScheme get appColors => const ColorScheme(
        brightness: _brightness,
        primary: _primary,
        onPrimary: _onPrimary,
        secondary: _secondary,
        onSecondary: _onSecondary,
        error: _error,
        onError: _onError,
        background: _background,
        onBackground: _onBackground,
        surface: _surface,
        onSurface: _onSurface,
      );
}
