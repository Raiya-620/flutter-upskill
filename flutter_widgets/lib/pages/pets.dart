import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetsList extends StatelessWidget {
  const PetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets list'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('pets'),
            builder: (context, petSnapshot) {
              if (petSnapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  child: CircularProgressIndicator(),
                );
              } else {
                final petDocs = petSnapshot.data!.docs;
                return ListView.builder(
                  itemCount: petDocs.length,
                  itemBuilder: (context, index) {
                    final petDocs = petSnapshot.data!.docs;
                    return Card(
                      elevation: 10,
                      child: ListTile(
                        title: Text(petDocs[index]['name']),
                        subtitle: Text(petDocs[index]['age']),
                      ),
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}
