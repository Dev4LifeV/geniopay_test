import 'package:flutter/material.dart';

extension Style on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get fonts => Theme.of(this).textTheme;
}
