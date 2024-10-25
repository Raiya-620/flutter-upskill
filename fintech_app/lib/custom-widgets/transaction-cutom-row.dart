import 'package:flutter/material.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection(this._color,
      {required this.ltext,
      required this.btext,
      required this.htext,
      super.key});
  final Color _color;
  final String htext;
  final String btext;
  final String ltext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: _color,
                child: const Icon(Icons.energy_savings_leaf_sharp),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    htext,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text(
                    btext,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              ltext,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: ),
            ),
          )
        ],
      ),
    );
  }
}
