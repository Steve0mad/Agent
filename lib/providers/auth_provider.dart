
import 'package:agent/model/user.dart' as MyUser;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../core/firestore_helper.dart';

class AuthUserProvider extends ChangeNotifier {

  User? authUser;
  MyUser.User? databaseUser;


  bool isFirebaseLoggedin() {
    if (FirebaseAuth.instance.currentUser != null) {
      authUser=FirebaseAuth.instance.currentUser;
      return true;
    } else {
      return false;
    }
  }

Future<void> retrieveDatabaseUser() async {

  databaseUser = await  FirestoreHelper.getUser(authUser!.uid);
}

}