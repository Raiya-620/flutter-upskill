import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1791833349/photo/student-university-and-portrait-of-black-woman-in-library-for-learning-education-and-reading.jpg?s=612x612&w=0&k=20&c=itaBSNJVOXsvG0POV3cTlyVIi9FbzC9YGdwcNsFf914=',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Suraiya Mohammed',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'abc@gmail.com',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.folder,
                ),
                title: Text(
                  'My files',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.group,
                ),
                title: Text(
                  'Shared with me',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.star,
                ),
                title: Text(
                  'Starred',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.delete,
                ),
                title: Text(
                  'Trash',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.upload,
                ),
                title: Text(
                  'Uploads',
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(
                  Icons.share,
                ),
                title: Text(
                  'Share',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: const Text(
                  'Logout',
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Drawer Widget',
        ),
      ),
      body: const Center(
        child: Text(
          'Hey there',
        ),
      ),
    );
  }
}
