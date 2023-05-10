import 'package:flutter/material.dart';
import 'package:geniopay_test/view/page.dart';
import 'package:geniopay_test/view/style/color.dart';
import 'package:geniopay_test/view/style/font.dart';

class App extends MaterialApp {
  const App({super.key});

  @override
  Widget get home => MainPage();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: AppColors.appColors,
        textTheme: AppFont.appFonts,
      );
}
