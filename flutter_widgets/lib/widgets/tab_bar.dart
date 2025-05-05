import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              'Tab Bar Widget',
              style: TextStyle(color: Colors.white),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.green[900],
            // indicatorWeight: 10.0,
            labelColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
                text: 'Status',
              ),
              Tab(
                icon: Icon(
                  Icons.call_sharp,
                  color: Colors.white,
                ),
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: const Center(
                child: Text(
                  'CHATS',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
                        Container(
              child: const Center(
                child: Text(
                  'STATUS',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
                        Container(
              child: const Center(
                child: const Text(
                  'CALLS',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
