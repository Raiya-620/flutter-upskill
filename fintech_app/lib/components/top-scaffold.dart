import 'package:fintech_app/components/button.dart';
import 'package:flutter/material.dart';

class TopScaffold extends StatelessWidget {
  const TopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'asset/images/icon.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good evening, ',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                      Text(
                        'Zain',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    'April 20 - 2024',
                  ),
                  Icon(
                    Icons.notifications_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Money you have',
              ),
              Text(
                '\$8.05',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button(
              Icons.add,
              'Add',
            ),
            Button(
              Icons.call_made,
              'Send',
            ),
            Button(
              Icons.currency_exchange,
              'Exchange',
            ),
          ],
        )
      ],
    );
  }
}
