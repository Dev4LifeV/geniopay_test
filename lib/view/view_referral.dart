import 'package:flutter/material.dart';
import 'package:geniopay_test/app.dart';
import 'package:geniopay_test/core/config/extension/ext_device_size.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';
import 'package:geniopay_test/view/widget/button/affirmative_button.dart';
import 'package:geniopay_test/view/widget/card/invite_friend_card.dart';
import 'package:geniopay_test/view/widget/card/outlined_card.dart';
import 'package:geniopay_test/view/widget/card/referral_card.dart';
import 'package:geniopay_test/view/widget/head/head.dart';

class ViewReferral extends StatelessWidget {
  const ViewReferral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _body(context),
                  ),
                ),
              )
            ],
          ),
        ),
      );

  List<Widget> _body(BuildContext context) => [
        _head(),
        _title(context),
        const SizedBox(
          height: 20,
        ),
        _cards(),
        _titleCardReferral(context),
        const ReferralCard(),
        const SizedBox(
          height: 10,
        ),
        _titleCardInviteFriends(context),
        const InviteFriendCard(),
        _disclaimer(context),
        const SizedBox(
          height: 10,
        ),
        _sendALinkButton(context),
      ];

  Widget _head() => Head(
        margin: EdgeInsets.zero,
        alignment: MainAxisAlignment.start,
        icons: [
          IconButton(
            onPressed: () => Navigator.pop(App.context!),
            icon: const Icon(Icons.arrow_back),
            padding: const EdgeInsets.only(right: 35),
          ),
        ],
      );

  Widget _title(BuildContext context) => Text(
        "Invite friends and earn 120 PLN",
        style: context.fonts.titleLarge?.copyWith(
          color: context.colors.primary,
        ),
      );

  Widget _cards() => Row(
        children: const [
          OutlinedCard(title: "For each friend", content: "zł 120"),
          SizedBox(
            width: 10,
          ),
          OutlinedCard(title: "Time left", content: "10 days"),
        ],
      );

  Widget _titleCardReferral(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          "What my friends need to do?",
          style: context.fonts.bodyMedium?.copyWith(
            color: context.colors.primary,
          ),
        ),
      );

  Widget _titleCardInviteFriends(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Invites • zł 0 earnd"),
          Text(
            "0 Pending",
            style: context.fonts.bodyMedium?.copyWith(
              color: context.colors.primary,
            ),
          ),
        ],
      );

  Widget _disclaimer(BuildContext context) => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  "By clicking send a link, you confirm that you have read and agree to the above disclaimers and our ",
              style: context.fonts.bodySmall?.copyWith(fontSize: 10),
            ),
            TextSpan(
              text: "Terms & Conditions",
              style: context.fonts.bodySmall?.copyWith(
                fontSize: 10,
                color: context.colors.primary,
              ),
            )
          ],
        ),
      );

  Widget _sendALinkButton(BuildContext context) => SizedBox(
        width: context.deviceWidth,
        child: AffirmativeButton(
          onPressed: () {},
          content: "SEND A LINK",
        ),
      );
}
