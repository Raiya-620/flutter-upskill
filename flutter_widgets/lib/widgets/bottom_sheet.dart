import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'BottomSheet Widget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Theme.of(context).primaryColor),
          ),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                context: context,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('oranges'),
                        subtitle: Text('Suraiya'),
                      ),
                      ListTile(
                        title: Text('mangoes'),
                        subtitle: Text('Hikma'),
                      ),
                      ListTile(
                        title: Text('pineapples'),
                        subtitle: Text('Rashida'),
                      ),
                      ListTile(
                        title: Text('strawberries'),
                        subtitle: Text('Ayisha'),
                      ),
                      ListTile(
                        title: Text('watermelon'),
                        subtitle: Text('Rahma'),
                      )
                    ],
                  );
                });
          },
          child: const Text(
            'Show BottomSheet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
