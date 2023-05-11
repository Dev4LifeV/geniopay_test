import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.fromLTRB(15, 40, 15, 0),
    child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline),
            )
          ],
        ),
  );
}
