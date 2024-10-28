import 'package:flutter/material.dart';
import 'package:flutter_widgets/wigets/container_sizedbox.dart';
import 'package:flutter_widgets/wigets/pageview.dart';
import 'package:flutter_widgets/wigets/rows_columns.dart';

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
      home: PageViewWidget(),
    );
  }
}
