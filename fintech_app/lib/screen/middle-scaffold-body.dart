import 'package:flutter/material.dart';

class MiddlePortion extends StatelessWidget {
  const MiddlePortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('To-do\'s'),
        Card(
          color: const Color(0xA9A9EE98),
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 150.0,
            width: 300.0,
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cheque book request',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                const Text('You can re-order column books now'),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 50.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text('Try now')),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
