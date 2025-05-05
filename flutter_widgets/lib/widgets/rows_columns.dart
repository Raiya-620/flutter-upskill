import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.yellow,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.red,
            ),
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.orange,
            ),
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.purple,
            ),
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.green,
            ),
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.blue,
            ),
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}
