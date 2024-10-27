import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(this._icon, this.btext, {super.key});

  final IconData _icon;
  final String btext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            _icon,
            color: Colors.black,
          ),
          Text(
            btext,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
