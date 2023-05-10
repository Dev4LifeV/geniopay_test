import 'package:flutter/material.dart';
import 'package:geniopay_test/view/widget/step/step_dashed.dart';

class VerticalStepperDashed extends StatelessWidget {
  const VerticalStepperDashed({
    required this.steps,
    Key? key,
  }) : super(key: key);

  final List<StepDashed> steps;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: steps,
        ),
      );
}
