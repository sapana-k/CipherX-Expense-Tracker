import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createUserDocument(String userId, String name, String email) async {
    try {
      await _firestore.collection('users').doc(userId).set({
        'name': name,
        'email': email,
      });
    } catch (e) {
      print('Error creating user document: $e');
    }
  }
}
