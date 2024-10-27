import 'package:fintech_app/components/custom-text-button.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard(this._color, this._bcolor, this.htext, this.mtext,
      {super.key});
  final Color _color;
  final Color _bcolor;
  final String htext;
  final String mtext;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: _color,
      child: Container(
        padding: const EdgeInsets.all(
          16,
        ),
        height: 150.0,
        width: 320.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              htext,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              mtext,
            ),
            CustomTextButton(
              _bcolor,
              'Try now',
            ),
          ],
        ),
      ),
    );
  }
}
