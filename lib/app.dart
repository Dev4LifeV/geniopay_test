import 'package:flutter/material.dart';
import 'package:geniopay_test/view/style/color.dart';
import 'package:geniopay_test/view/style/font.dart';

class App extends MaterialApp {
  const App({required this.page, super.key});

  final Widget page;
  static BuildContext? context;

  @override
  ThemeData get theme => ThemeData(
        cardTheme: const CardTheme(elevation: 0),
        colorScheme: AppColors.appColors,
        textTheme: AppFont.appFonts,
        splashFactory: NoSplash.splashFactory,
      );

  @override
  Widget get home => page;
}
