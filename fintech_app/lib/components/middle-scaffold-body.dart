import 'package:fintech_app/components/small-card.dart';
import 'package:flutter/material.dart';

class MiddlePortion extends StatelessWidget {
  const MiddlePortion({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(
          16.0,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To-do\'s',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SmallCard(
                  Color(
                    0xA9A9EE98,
                  ),
                  Colors.green,
                  'Cheque book request',
                  'You can reorder column books now',
                ),
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SmallCard(
                  Color(
                    0x888ee2fd,
                  ),
                  Colors.blue,
                  'Cheque book request',
                  'You can reorder column books now',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
