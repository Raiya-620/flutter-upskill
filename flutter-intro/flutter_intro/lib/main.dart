import 'package:flutter/material.dart';
import 'package:flutter_intro/screens/text-section.dart';
import 'package:flutter_intro/screens/image-banner.dart';
import 'package:flutter_intro/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(titleTextStyle: AppBarTextStyle),
        textTheme: const TextTheme(
            titleLarge: TitleTextStyle, bodyLarge: BodyTextStyle),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Location Detail',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(
              'assets/images/flower.jpg',
            ),
            TextSection('Summary 1', 'Something1'),
            TextSection('Summary2', 'Something 2'),
            TextSection('Summary3', 'Something 3'),
          ],
        ),
      ),
    );
  }
}
