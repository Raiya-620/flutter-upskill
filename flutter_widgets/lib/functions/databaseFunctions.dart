import 'package:cloud_firestore/cloud_firestore.dart';

create(String collName, docName, name, int age) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .set({'name': name, 'age': age});
}

update(String collName, docName, name) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({'name': name});
}

delete(String collName, docName) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
}
