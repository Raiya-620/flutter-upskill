import 'package:fintech_app/components/navigations.dart';
import 'package:fintech_app/components/bottom-scaffold.dart';
import 'package:fintech_app/components/middle-scaffold-body.dart';
import 'package:fintech_app/components/top-scaffold.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final _controller = PageController();
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xEFEFEFEF,
      ),
      bottomNavigationBar: BottomNav(_controller),
      body: PageView(
        controller: _controller,
        children: const [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopScaffold(),
                    MiddlePortion(),
                    BottomCard(),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Text('activities page'),
          ),
          Center(
            child: Text('cards page'),
          ),
          Center(
            child: Text('profile page'),
          ),
        ],
      ),
    );
  }
}
