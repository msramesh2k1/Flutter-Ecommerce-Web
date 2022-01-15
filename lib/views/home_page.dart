import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_and_mrs/constants/colours.dart';
import 'package:mr_and_mrs/widgets/headerwidget.dart';
import 'package:mr_and_mrs/widgets/textwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Header(name: "LOGIN", onpress: () {}),
                const SizedBox(
                  width: 10,
                ),
                Header(name: "MY CART", onpress: () {}),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
