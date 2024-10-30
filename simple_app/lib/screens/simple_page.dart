import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  final String name;
  const SimplePage(this.name, {super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your name is: ${widget.name}'),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
