 
// // // // import 'package:firebase_auth/firebase_auth.dart';

// // // // class AuthRemote {
// // // //   final FirebaseAuth _auth = FirebaseAuth.instance;

// // // //   User? currentUser() => _auth.currentUser;

// // // //   Stream<User?> authStateChanges() => _auth.authStateChanges();

// // // //   Future<UserCredential> signIn(String email, String password) async {
// // // //     return _auth.signInWithEmailAndPassword(email: email, password: password);
// // // //   }

// // // //   Future<void> signOut() => _auth.signOut();
// // // // }
// // // import 'package:firebase_auth/firebase_auth.dart';

// // // class AuthRemote {
// // //   final FirebaseAuth _auth = FirebaseAuth.instance;

// // //   User? currentUser() => _auth.currentUser;

// // //   Stream<User?> authStateChanges() => _auth.authStateChanges();

// // //   Future<UserCredential> signIn(String email, String password) async {
// // //     return _auth.signInWithEmailAndPassword(email: email, password: password);
// // //   }

// // //   Future<void> signOut() => _auth.signOut();
// // // }


// // import 'package:firebase_auth/firebase_auth.dart';
// // import '../../../core/exceptions.dart';

// // class AuthRemote {
// //   final FirebaseAuth _auth = FirebaseAuth.instance;

// //   Stream<User?> authStateChanges() => _auth.authStateChanges();

// //   User? currentUser() => _auth.currentUser;

// //   Future<void> signIn(String email, String password) async {
// //     try {
// //       await _auth.signInWithEmailAndPassword(email: email, password: password);
// //     } catch (e) {
// //       throw ServerException('Failed to sign in: $e');
// //     }
// //   }

// //   Future<void> signUp(String email, String password) async {
// //     try {
// //       await _auth.createUserWithEmailAndPassword(email: email, password: password);
// //     } catch (e) {
// //       throw ServerException('Failed to sign up: $e');
// //     }
// //   }

// //   Future<void> signOut() async {
// //     try {
// //       await _auth.signOut();
// //     } catch (e) {
// //       throw ServerException('Failed to sign out: $e');
// //     }
// //   }
// // }

// import 'package:firebase_auth/firebase_auth.dart';
// import '../../../core/exceptions.dart';

// class AuthRemote {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Stream<User?> authStateChanges() => _auth.authStateChanges();

//   User? currentUser() => _auth.currentUser;

//   Future<void> signIn(String email, String password) async {
//     try {
//       await _auth.signInWithEmailAndPassword(email: email, password: password);
//     } catch (e) {
//       throw ServerException('Failed to sign in: $e');
//     }
//   }

//   Future<void> signUp(String email, String password) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(email: email, password: password);
//     } catch (e) {
//       throw ServerException('Failed to sign up: $e');
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       await _auth.signOut();
//     } catch (e) {
//       throw ServerException('Failed to sign out: $e');
//     }
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/exceptions.dart';

class AuthRemote {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  User? currentUser() => _auth.currentUser;

  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw ServerException('Failed to sign in: $e');
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw ServerException('Failed to sign up: $e');
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw ServerException('Failed to sign out: $e');
    }
  }
}