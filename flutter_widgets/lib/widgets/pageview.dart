import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  final _controller = PageController();

  PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('PageView Widget'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: const Center(
              child: Text(
                '1',
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: const Center(
              child: Text(
                '3',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
