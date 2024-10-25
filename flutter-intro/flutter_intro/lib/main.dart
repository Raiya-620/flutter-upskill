import 'package:flutter/material.dart';
import 'package:flutter_intro/models/location.dart';
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
    final locations = Location.fetchAll();
    final location = locations.first;
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
          title: Text(
            location.name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(
                location.imagePath,
              ),
            ]..addAll(textSection(location)),
          ),
        ),
      ),
    );
  }
}

List<Widget> textSection(Location location) {
  return location.facts
      .map((fact) => TextSection(fact.text, fact.title))
      .toList();
}
