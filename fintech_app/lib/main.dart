import 'package:fintech_app/screen/main-body-screen.dart';
import 'package:fintech_app/screen/top-scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xEFEFEFEF),
        body: Body(),
      ),
    );
  }
}
