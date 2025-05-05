import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'AlertDialog Box',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyAlertDialog(context);
          },
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.blue,
            ),
          ),
          child: const Text(
            'Show Alert',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showMyAlertDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('This is an alert'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is my alert Dialog'),
                Text('It\'s me Suraiya'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Undo'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Approve'),
            ),
          ],
        );
      });
}
