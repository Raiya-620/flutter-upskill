import 'package:fintech_app/navigations.dart';
import 'package:fintech_app/screen/bottom-scaffold.dart';
import 'package:fintech_app/screen/middle-scaffold-body.dart';
import 'package:fintech_app/screen/top-scaffold.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopScaffold(),
              MiddlePortion(),
              BottomCard(),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}
