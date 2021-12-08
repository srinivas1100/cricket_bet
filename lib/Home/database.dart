import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({ this.uid});

  
  // collection reference
  final CollectionReference collectionReference = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String sugars, String name, int strength) async {
    return await collectionReference.doc(uid).set({
      'sugars' : sugars,
      'name': name,
      'strength' : 100,
    });
  }

  // get strem
  Stream<QuerySnapshot> get collection1 {
    return collectionReference.snapshots();
  }


}
