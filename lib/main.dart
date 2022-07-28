import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/onboardscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Stuff',
      theme: ThemeData(primarySwatch: grey),
      home: const MyHomePage(),
    );
  }

  static const MaterialColor grey = MaterialColor(
    0xFFFBA0A2,
    <int, Color>{
      50: Color(0xFFFBA0A2),
      100: Color(0xFFFBA0A2),
      200: Color(0xFFFBA0A2),
      300: Color(0xFFFBA0A2),
      350: Color(0xFFFBA0A2),
      // only for raised button while pressed in light theme
      400: Color(0xFFFBA0A2),
      500: Color(0xFFFBA0A2),
      600: Color(0xFFFBA0A2),
      700: Color(0xFFFBA0A2),
      800: Color(0xFFFBA0A2),
      850: Color(0xFFFBA0A2),
      // only for background color in dark theme
      900: Color(0xFFFBA0A2),
    },
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [Colors.white, Color(0xFFFBA0A2)])),
      child: Image.asset("assets/images/icon.png"),
    ));
  }
}
