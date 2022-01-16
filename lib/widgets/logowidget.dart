import 'package:flutter/material.dart';
import 'package:mr_and_mrs/widgets/textwidget.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 8.0, top: 10),
          child: CText(text: "Mr & Mrs", size: 14),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CText(
            text: "Design Wood Works",
            size: 10,
            weight: FontWeight.normal,
          ),
        ),
      ],
      
    );
  }
}
