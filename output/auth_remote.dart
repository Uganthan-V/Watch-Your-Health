 
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthRemote {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   User? currentUser() => _auth.currentUser;

//   Stream<User?> authStateChanges() => _auth.authStateChanges();

//   Future<UserCredential> signIn(String email, String password) async {
//     return _auth.signInWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> signOut() => _auth.signOut();
// }
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemote {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? currentUser() => _auth.currentUser;

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  Future<UserCredential> signIn(String email, String password) async {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() => _auth.signOut();
}
