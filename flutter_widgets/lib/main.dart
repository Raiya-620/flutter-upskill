import 'package:flutter/material.dart';
import 'package:flutter_widgets/wigets/drawer.dart';
import 'package:flutter_widgets/wigets/image.dart';

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
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
      ),
      home: ImageWidget(),
    );
  }
}
