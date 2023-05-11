import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({
    required this.icons,
    this.alignment = MainAxisAlignment.spaceBetween,
    this.margin = const EdgeInsets.fromLTRB(15, 40, 15, 0),
    Key? key,
  }) : super(key: key);

  final List<IconButton> icons;
  final MainAxisAlignment alignment;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) => Container(
        margin: margin,
        child: Row(
          mainAxisAlignment: alignment,
          children: icons,
        ),
      );
}
