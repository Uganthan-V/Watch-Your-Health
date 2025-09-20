// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import '../../domain/repositories/auth_repository.dart';

// // class SignUpUser {
// //   final AuthRepository authRepo;
// //   SignUpUser(this.authRepo);

// //   Future<void> call({
// //     required String email,
// //     required String password,
// //     required String firstName,
// //     required String lastName,
// //   }) async {
// //     await authRepo.signUp(email, password);
// //     final userId = authRepo.currentUser()?.uid;
// //     if (userId != null) {
// //       await FirebaseFirestore.instance.collection('users').doc(userId).set({
// //         'id': userId,
// //         'email': email,
// //         'firstName': firstName,
// //         'lastName': lastName,
// //         'age': 0,
// //         'weightKg': 0.0,
// //         'heightCm': 0,
// //         'goals': [],
// //         'createdAt': Timestamp.now(),
// //       });
// //     }
// //   }
// // }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../../domain/repositories/auth_repository.dart';

// class SignUpUser {
//   final AuthRepository authRepo;
//   SignUpUser(this.authRepo);

//   Future<void> call({
//     required String email,
//     required String password,
//     required String firstName,
//     required String lastName,
//   }) async {
//     await authRepo.signUp(email, password);
//     final userId = authRepo.currentUser()?.uid;
//     if (userId != null) {
//       await FirebaseFirestore.instance.collection('users').doc(userId).set({
//         'id': userId,
//         'email': email,
//         'firstName': firstName,
//         'lastName': lastName,
//         'age': 0,
//         'weightKg': 0.0,
//         'heightCm': 0,
//         'goals': [],
//         'createdAt': Timestamp.now(),
//       });
//     }
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/repositories/auth_repository.dart';

class SignUpUser {
  final AuthRepository authRepo;
  SignUpUser(this.authRepo);

  Future<void> call({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required int age,
    required double weightKg,
    required int heightCm,
    required List<String> goals,
  }) async {
    await authRepo.signUp(email, password);
    final userId = authRepo.currentUser()?.uid;
    if (userId != null) {
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'id': userId,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'weightKg': weightKg,
        'heightCm': heightCm,
        'goals': goals,
        'createdAt': Timestamp.now(),
      });
    }
  }
}