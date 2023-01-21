import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signInAnonimous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser firebaseuser = result.user;

      return firebaseuser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<void> signOut() async {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUser => _auth.onAuthStateChanged;
}
