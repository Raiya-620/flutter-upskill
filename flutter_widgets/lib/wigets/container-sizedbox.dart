import 'package:flutter/material.dart';

class Container_SizedBox extends StatelessWidget {
  const Container_SizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container and SizedBox widget'),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.blue,
              // shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(20.0)
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                  color: Colors.black,
                )
              ]),
          height: 100,
          width: 100,
          child: const Center(
            child: Text(
              'hello',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
