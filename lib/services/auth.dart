import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInWithEmailandPassword(String email, String password) {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {}
  }
}
