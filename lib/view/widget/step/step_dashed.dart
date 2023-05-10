import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';
import 'package:geniopay_test/view/painter/dashed_line_vertical_painter.dart';

class StepDashed extends StatelessWidget {
  const StepDashed({
    required this.title,
    required this.content,
    this.isActive = false,
    this.circleColor = Colors.red,
    this.activeColor = Colors.blue,
    super.key,
  });

  final bool isActive;
  final String title;
  final String content;
  final Color circleColor;
  final Color activeColor;

  @override
  Widget build(BuildContext context) => isActive
      ? _ActiveStepDashed(
          title: title,
          content: content,
          activeColor: activeColor,
          circleColor: circleColor,
        )
      : _InactiveStepDashed(
          title: title,
          content: content,
          circleColor: circleColor,
        );
}

class _ActiveStepDashed extends StatelessWidget {
  const _ActiveStepDashed({
    required this.title,
    required this.content,
    this.circleColor = Colors.red,
    this.activeColor = Colors.blue,
    Key? key,
  }) : super(key: key);

  final Color circleColor;
  final Color activeColor;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _activeCircle(
                      _circle(),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    _titleText(context),
                  ],
                ),
                _contentText(),
              ],
            ),
          ),
        ],
      );

  Widget _activeCircle(Widget child) => Container(
      margin: const EdgeInsets.only(left: 20, top: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: activeColor,
        ),
      ),
      child: child);

  Widget _circle() => Container(
        width: 13,
        height: 13,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
      );

  Widget _titleText(BuildContext context) => Text(
        title,
        style: context.fonts.bodyLarge?.copyWith(
          color: context.colors.primary,
        ),
      );

  Widget _contentText() => Container(
        margin: const EdgeInsets.only(left: 35),
        child: CustomPaint(
          foregroundPainter: DashedLineVerticalPainter(),
          child: Container(
            margin: const EdgeInsets.only(left: 34.5),
            width: 285,
            child: Text(content),
          ),
        ),
      );
}

class _InactiveStepDashed extends StatelessWidget {
  const _InactiveStepDashed({
    required this.title,
    required this.content,
    this.circleColor = Colors.red,
    Key? key,
  }) : super(key: key);

  final String title;
  final String content;
  final Color circleColor;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _circle(),
                  const SizedBox(
                    width: 18,
                  ),
                  _titleText(context),
                ],
              ),
              _contentText(),
            ],
          ),
        ],
      );

  Widget _circle() => Container(
        width: 13,
        height: 13,
        margin: const EdgeInsets.only(left: 28),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
      );

  Widget _titleText(BuildContext context) => Container(
        margin: const EdgeInsets.only(left: 8),
        child: Text(
          title,
          style: context.fonts.bodyLarge?.copyWith(
            color: context.colors.primary,
          ),
        ),
      );

  Widget _contentText() => Container(
        margin: const EdgeInsets.only(left: 35),
        child: CustomPaint(
          foregroundPainter: DashedLineVerticalPainter(),
          child: Container(
            margin: const EdgeInsets.only(left: 34),
            width: 285,
            child: Text(content),
          ),
        ),
      );
}
