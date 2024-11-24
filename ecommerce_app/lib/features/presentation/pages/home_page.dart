import 'package:ecommerce_app/features/presentation/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/presentation/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        'Hello',
        'William Johnson,',
      ),
      body: CustomCard(),
    );
  }
}
