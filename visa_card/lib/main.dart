import 'package:flutter/material.dart';
import 'package:visa_card/pages/home.dart';
import 'package:visa_card/utils/color.dart';

void main() {
  return runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: AppColors.bgColor),
      home: const Home(),);
  }
}