import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/functions/databaseFunctions.dart';
import 'package:flutter_widgets/pages/pets.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.leave_bags_at_home))
        ],
        title: Text('Database Options'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  create('tom', 'kitty', 'dog', 12);
                },
                child: Text(
                  'Create',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  update('tom', 'kitty', 'tiger');
                },
                child: Text(
                  'Update',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PetsList()));
                },
                child: Text(
                  'Retrieve',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  delete('tom', 'kitty');
                },
                child: Text(
                  'Delete',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
