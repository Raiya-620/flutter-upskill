import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: colors.black,
      color: Color(0xFF25A0A7),
      child: Container(
        height: 195.0,
        width: 305.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Price',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text('\$500.85'),
              Text('**** **** **** 1234'),
              Text('William Johnson'),
            ],
          ),
        ),
      ),
    );
  }
}
