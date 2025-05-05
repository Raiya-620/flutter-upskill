import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Button Widget')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                overlayColor: WidgetStatePropertyAll(Colors.black),
                elevation: WidgetStatePropertyAll(10),
                backgroundColor: WidgetStatePropertyAll(
                  Colors.yellow,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Press me',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        WidgetStatePropertyAll(Theme.of(context).primaryColor)),
                onPressed: () {},
                child: const Text(
                  'Press me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
