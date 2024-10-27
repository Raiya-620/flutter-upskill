import 'package:fintech_app/components/transaction-cutom-row.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        5,
        8,
        5,
        8,
      ),
      child: Card(
        color: const Color(
          0xF9F9F9F9,
        ),
        child: Container(
          width: 500,
          height: 300,
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  16.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In',
                        ),
                        Text(
                          '1,189.34',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Out',
                        ),
                        Text(
                          '948.02',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              TransactionsSection(
                Colors.blue,
                Icons.energy_savings_leaf,
                htext: 'Energy',
                btext: 'Today - Coffee',
                ltext: '-\$34.80',
              ),
              TransactionsSection(
                Colors.green,
                Icons.person,
                htext: 'Nijum chy',
                btext: 'Today - Design',
                ltext: '+\$100',
              ),
              TransactionsSection(
                Colors.purple,
                Icons.oil_barrel_outlined,
                htext: 'Bike Oil',
                btext: 'Yesterday - fuel',
                ltext: '-\$14,80',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
