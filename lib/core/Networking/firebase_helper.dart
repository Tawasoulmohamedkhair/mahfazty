import 'package:firebase_auth/firebase_auth.dart';

class FireBaseHelper {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future loginUser(String email, String password) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future registerUser(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

/*  Future logout() async {
    await auth.signOut;
  }*/

  User? getCurrentUser() {
    return auth.currentUser;
  }
}
