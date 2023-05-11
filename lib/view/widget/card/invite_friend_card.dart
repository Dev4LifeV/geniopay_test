import 'package:flutter/material.dart';
import 'package:geniopay_test/core/config/extension/ext_style.dart';

class InviteFriendCard extends StatelessWidget {
  const InviteFriendCard({super.key});

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              _inviteButtonTooltip(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _inviteButton(
                    context,
                    Icons.person,
                    backgroundColor: context.colors.primary.withOpacity(0.2),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  _inviteButton(context, Icons.person,
                      backgroundColor: context.colors.primary.withOpacity(0.1)),
                  const SizedBox(
                    width: 15,
                  ),
                  _inviteButton(context, Icons.person,
                      backgroundColor: context.colors.primary.withOpacity(0.05)),
                ],
              )
            ],
          ),
        ),
      );

  Widget _inviteButton(
    BuildContext context,
    IconData icon, {
    Color backgroundColor = const Color(0xFF008AA7),
    Color? iconColor = Colors.white,
  }) =>
      Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              48,
            ),
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      );

  Widget _inviteButtonTooltip(BuildContext context) => Column(
        children: [
          _inviteButton(
            context,
            Icons.add,
          ),
          Text(
            "Invite a friend",
            style: context.fonts.bodySmall?.copyWith(
              color: context.colors.primary,
            ),
          ),
        ],
      );
}
