import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/picture.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
