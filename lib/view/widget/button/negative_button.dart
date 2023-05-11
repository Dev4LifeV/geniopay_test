import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';

class NegativeButton extends StatelessWidget {
  const NegativeButton({
    required this.onPressed,
    required this.content,
    Key? key,
  }) : super(key: key);

  final String content;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory, foregroundColor: context.colors.onSecondary),
        child: Text(
          content.toUpperCase(),
        ),
      );
}
