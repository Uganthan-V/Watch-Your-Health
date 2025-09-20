 
// // import 'package:firebase_auth/firebase_auth.dart';

// // abstract class AuthRepository {
// //   Stream<User?> authStateChanges();
// //   User? currentUser();
// //   Future<void> signIn(String email, String password);
// //   Future<void> signOut();
// // }


// import 'package:firebase_auth/firebase_auth.dart';

// abstract class AuthRepository {
//   Stream<User?> authStateChanges();
//   User? currentUser();
//   Future<void> signIn(String email, String password);
//   Future<void> signUp(String email, String password); // Added for sign-up
//   Future<void> signOut();
// }

import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Stream<User?> authStateChanges();
  User? currentUser();
  Future<void> signIn(String email, String password);
  Future<void> signUp(String email, String password);
  Future<void> signOut();
}