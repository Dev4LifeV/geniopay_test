import 'package:flutter/material.dart';
import 'package:geniopay_test/view/view_page_selector.dart';

class AppSelector extends MaterialApp {
  const AppSelector({super.key});

  @override
  Widget get home => const ViewPageSelector();
}
