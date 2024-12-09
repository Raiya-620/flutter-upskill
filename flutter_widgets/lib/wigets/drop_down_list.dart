import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});
  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

String selectedValue = 'orange';

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Drop Down List',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedValue,
                  dropdownColor: Colors.grey.shade200,
                  items: <String>[
                    'apples',
                    'orange',
                    'strawberries',
                    'mangoes',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
