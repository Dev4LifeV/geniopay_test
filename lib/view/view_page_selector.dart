import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geniopay_test/app.dart';
import 'package:geniopay_test/view/view_referral.dart';
import 'package:geniopay_test/view/view_transfer_created.dart';

class ViewPageSelector extends StatelessWidget {
  const ViewPageSelector({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("GenioPay Test"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buttonsSelectionPage(context),
          ),
        ),
      );

  List<Widget> _buttonsSelectionPage(BuildContext context) => [
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) {
                App.context = context;
                return const App(
                  page: ViewTransferCreated(),
                );
              },
            ),
          ),
          child: const Text("Open ViewTransferCreated"),
        ),
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) {
                App.context = context;
                return const App(
                  page: ViewReferral(),
                );
              },
            ),
          ),
          child: const Text("Open ViewReferral"),
        ),
      ];
}
