// import 'package:cloud_firestore/cloud_firestore.dart';
// store the document with name and email in cloud firestore,
// and name of document should be the firebase user id ,
// then store user id in local storage like shared preference to get the
// login the user after the session is terminated.
// Implement a logout functionality to logout the user.

class UserModel {
  final String name;
  final String email;
  final String uid;
  final String gender;
  final String occupation;
  final int age;

  UserModel(
      {required this.name,
        required this.email,
        required this.gender,
        required this.occupation,
        required this.uid,
        required this.age
      });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "gender":gender,
      "occupation":occupation,
      "age": age
    };
  }
  //
  // factory UserModel.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> map) {
  //   return UserModel(
  //       name: map["name"],
  //       email: map["email"],
  //       uid: map["uid"],
  //       occupation: map["occupation"],
  //       age: map["age"],
  //       gender: map["gender"]
  //   );
  // }
}