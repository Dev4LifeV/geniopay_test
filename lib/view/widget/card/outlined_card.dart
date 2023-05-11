import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';

class OutlinedCard extends StatelessWidget {
  const OutlinedCard({
    required this.title,
    required this.content,
    super.key,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: context.colors.primary,
              width: 1,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: context.fonts.bodyLarge?.copyWith(
                    fontSize: 15,
                    color: context.colors.primary,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  content,
                  style: context.fonts.bodyLarge?.copyWith(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
