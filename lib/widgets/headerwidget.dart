
import 'package:flutter/material.dart';

import 'textwidget.dart';

class Header extends StatelessWidget {
  final String? name;
  final Function? onpress;
  const Header({
    Key? key,
    required this.name,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpress;
      },
      child: Container(
        child: Center(
            child: CText(
          text: name.toString(),
          weight: FontWeight.bold,
          size: 12,
          color: Colors.black,
        )),
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.black,
        )),
      ),
    );
  }
}
