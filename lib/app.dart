import 'package:flutter/material.dart';
import 'package:geniopay_test/view/view_transfer_created.dart';
import 'package:geniopay_test/view/style/color.dart';
import 'package:geniopay_test/view/style/font.dart';

class App extends MaterialApp {
  const App({super.key});

  @override
  Widget get home => ViewTransferCreated();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: AppColors.appColors,
        textTheme: AppFont.appFonts,
        splashFactory: NoSplash.splashFactory,
      );
}
