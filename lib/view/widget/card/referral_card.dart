import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';

class ReferralCard extends StatelessWidget {
  const ReferralCard({super.key});

  final List<String> _instructions = const [
    'Sign up for GenioPay using your unique referrall link',
    'Verify their identity and pass our Know Your Customer (KYC) checks',
    'Add money to their account by using any of available methods',
    'Order their own physical GenioPay card (delivery fees may apply)',
    'Make 3 separate purchases of at least 15 PLN each with their virtual or physical card (only genuine purchases, transfers, gambling, gift cards, etc. are NOT valid)',
    'Make 3 separate purchases of at least 15 PLN each with their virtual or physical card (only genuine purchases, transfers, gambling, gift cards, etc. are NOT valid)'
  ];

  @override
  Widget build(BuildContext context) => Card(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: List.from(_instructions)
                .asMap()
                .entries
                .map(
                  (entry) => _stepRow(context, (entry.key + 1).toString(), entry.key),
                )
                .toList(),
          ),
        ),
      );

  Widget _stepRow(BuildContext context, String stepNumber, int index) => Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            _step(context, stepNumber),
            Expanded(
              child: Text(
                _instructions[index],
                style: context.fonts.bodySmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );

  Widget _step(BuildContext context, String stepNumber) => Container(
        width: 24,
        height: 24,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.transparent),
          color: context.colors.primary,
        ),
        child: Center(
          child: Text(
            stepNumber,
            style: context.fonts.bodyMedium?.copyWith(color: context.colors.background),
          ),
        ),
      );
}
