import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/day19ui.dart';
import 'package:flutter_widgets/widgets/day20.dart';


void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
      ),
      home: const Day20(),
    );
  }
}
