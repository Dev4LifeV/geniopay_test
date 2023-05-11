import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';

class AffirmativeButton extends StatelessWidget {
  const AffirmativeButton({
    required this.onPressed,
    required this.content,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;
  final String content;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.secondary,
          elevation: 0,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          content.toUpperCase(),
          style:
              context.fonts.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      );
}
