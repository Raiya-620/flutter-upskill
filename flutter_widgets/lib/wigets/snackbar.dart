import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(child: Text('Snack bar widget')),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              var snackbar = SnackBar(
                duration: Duration(milliseconds: 3000),
                action: SnackBarAction(
                    label: 'Undo', textColor: Colors.blue, onPressed: () {}),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                content: const Text('this is a snackbar'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white)),
            child: const Text(
              'Show snack bar',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
