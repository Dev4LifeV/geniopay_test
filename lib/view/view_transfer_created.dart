import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_device_size.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';
import 'package:geniopay_test/view/widget/button/affirmative_button.dart';
import 'package:geniopay_test/view/widget/expansion_tile/custom_expansion_tile.dart';
import 'package:geniopay_test/view/widget/head/head.dart';
import 'package:geniopay_test/view/widget/modal/modal_sheet.dart';
import 'package:geniopay_test/view/widget/step/step_dashed.dart';
import 'package:geniopay_test/view/widget/stepper/vertical_stepper_dashed.dart';

class ViewTransferCreated extends StatelessWidget {
  const ViewTransferCreated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  Head(
                    icons: _headIcons(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _headerTransferSuccess(context),
                      const SizedBox(
                        height: 20,
                      ),
                      _tiles(context),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      );

  Widget _stepper(BuildContext context) => VerticalStepperDashed(
        steps: _steps(context),
      );

  List<StepDashed> _steps(BuildContext context) => [
        StepDashed(
          title: "Order placed",
          content: "Transfer 123456789 created in our system",
          circleColor: context.colors.primary,
          activeColor: context.colors.primary,
          isActive: true,
        ),
        StepDashed(
          title: "Transfer on its way",
          content: "Payment processing with / payment received by GenioPay",
          circleColor: context.colors.primary,
        ),
        StepDashed(
          title: "Transfer with our partner",
          content: "Payment received by partner bank / agent / airtime provider",
          circleColor: context.colors.primary,
        ),
        StepDashed(
            title: "Transfer with recipient",
            content: "Payment received by collected by or delivered to John Smith",
            circleColor: context.colors.primary,
            isLast: true),
      ];

  Widget _tiles(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomExpansionTile(
            backgroundColor: context.colors.surface,
            collapsedBackgroundColor: context.colors.surface,
            title: const Text("What happens next?"),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    _stepper(context),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 25, 30, 0),
                      width: context.deviceWidth,
                      child: AffirmativeButton(
                        onPressed: () => showModalBottomSheet(
                            context: context, builder: (context) => ModalSheet(), backgroundColor: Colors.transparent),
                        content: "VIEW YOUR TRANSFER STATUS",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomExpansionTile(
            title: const Text("Refer a friend and get 100.00 PLN"),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    _stepper(context),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 25, 30, 0),
                      width: context.deviceWidth,
                      child: AffirmativeButton(
                        onPressed: () {},
                        content: "VIEW YOUR TRANSFER STATUS",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const CustomExpansionTile(
            title: Text("Allow GHS exchange rate notifications"),
          ),
          const CustomExpansionTile(
            title: Text("Share receipt"),
          )
        ],
      );

  Widget _headerImage() => Image.asset(
        "assets/images/money_transfer.png",
        width: 100,
        height: 100,
      );

  Widget _headerTransferSuccess(BuildContext context) => Column(
        children: [
          _headerImage(),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 285,
            child: Text(
              "Your transfer has been created!",
              style: context.fonts.bodyLarge?.copyWith(color: context.colors.primary),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "John Smith will receive 100.00 GHS",
            style: context.fonts.bodyMedium,
          ),
        ],
      );

  List<IconButton> _headIcons() => [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.help_outline),
        )
      ];
}
