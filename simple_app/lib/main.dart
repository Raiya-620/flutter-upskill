import 'package:flutter/material.dart';
import 'package:simple_app/screens/simple_page.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: const Text(
            'A Simple App',
          )),
        ),
        body: const SimplePage('Joshua'),
      ),
    );
  }
}
