import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_device_size.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';
import 'package:geniopay_test/view/widget/button/affirmative_button.dart';
import 'package:geniopay_test/view/widget/button/negative_button.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 40, top: 50, bottom: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Exchange rate updates",
                textAlign: TextAlign.start,
                style: context.fonts.bodyLarge,
              ),
              SizedBox(
                height: 20,
              ),
              const Text("Get daily notifications sent to your phone with the latest exchange rates from GenioPay."),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: context.deviceWidth,
                child: AffirmativeButton(onPressed: () {}, content: "NOTIFY ME"),
              ),
              SizedBox(
                width: context.deviceWidth,
                child: NegativeButton(onPressed: () {}, content: "NO, THANKS"),
              )
            ],
          ),
        ),
      );
}
