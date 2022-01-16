import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCVrZof6f5g9touo83C9dW_mT2lsCv7Q6E",
          projectId: "mr-and-mrs-93502",
          storageBucket: "mr-and-mrs-93502.appspot.com",
          messagingSenderId: "477888393209",
          appId: "1:477888393209:web:fd494d4b3521b09d59d728",
          measurementId: "G-TXWXP73RXE"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
