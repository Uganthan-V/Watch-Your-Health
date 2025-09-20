// // // // seed_data.dart
// // // // Standalone script to seed sample data into Firestore.
// // // // Run with: dart run seed_data.dart
// // // // Ensure you have firebase_core and cloud_firestore in your pubspec.yaml.
// // // // If running independently, create a new Dart project and add dependencies:
// // // // dart pub add firebase_core cloud_firestore

// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'firebase_options.dart'; // Copy this from your project or recreate with the provided config.

// // // void main() async {
// // //   // Initialize Firebase
// // //   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// // //   final firestore = FirebaseFirestore.instance;

// // //   // Seed users collection
// // //   // await _seedUsers(firestore);

// // //   // Seed assessments collection
// // //   await _seedAssessments(firestore);

// // //   // Seed appointments collection
// // //   await _seedAppointments(firestore);

// // //   // Seed bookings collection
// // //   await _seedBookings(firestore);

// // //   print('Data seeding completed successfully!');
// // // }

// // // Future<void> _seedUsers(Firestore firestore) async {
// // //   final collection = firestore.collection('users');

// // //   await collection.doc('user_jane_doe').set({
// // //     'id': 'uid_jane123',
// // //     'email': 'jane.doe@example.com',
// // //     'firstName': 'Jane',
// // //     'lastName': 'Doe',
// // //     'age': 28,
// // //     'weightKg': 65.5,
// // //     'heightCm': 165,
// // //     'goals': ['weight_loss', 'cardio'],
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T10:00:00Z')),
// // //   });

// // //   await collection.doc('user_john_smith').set({
// // //     'id': 'uid_john456',
// // //     'email': 'john.smith@example.com',
// // //     'firstName': 'John',
// // //     'lastName': 'Smith',
// // //     'age': 35,
// // //     'weightKg': 80.0,
// // //     'heightCm': 180,
// // //     'goals': ['muscle_gain', 'strength'],
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-05T14:30:00Z')),
// // //   });

// // //   await collection.doc('user_anna_lee').set({
// // //     'id': 'uid_anna789',
// // //     'email': 'anna.lee@example.com',
// // //     'firstName': 'Anna',
// // //     'lastName': 'Lee',
// // //     'age': 24,
// // //     'weightKg': 55.0,
// // //     'heightCm': 160,
// // //     'goals': ['flexibility', 'yoga'],
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-10T09:15:00Z')),
// // //   });

// // //   await collection.doc('user_mike_brown').set({
// // //     'id': 'uid_mike101',
// // //     'email': 'mike.brown@example.com',
// // //     'firstName': 'Mike',
// // //     'lastName': 'Brown',
// // //     'age': 42,
// // //     'weightKg': 90.5,
// // //     'heightCm': 175,
// // //     'goals': ['endurance', 'running'],
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-15T16:45:00Z')),
// // //   });
// // // }

// // // Future<void> _seedAssessments(Firestore firestore) async {
// // //   final collection = firestore.collection('assessments');

// // //   await collection.doc('assess_cardio_quiz').set({
// // //     'id': 'assess_001',
// // //     'title': 'Cardio Fitness Quiz',
// // //     'description': 'Assess your cardiovascular endurance.',
// // //     'type': 'quiz',
// // //     'questions': [
// // //       {'q': 'How many push-ups can you do?', 'options': ['0-10', '11-20', '21+']},
// // //       {'q': 'Resting heart rate?', 'options': ['<60', '60-80', '>80']},
// // //     ],
// // //     'userId': null,
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T08:00:00Z')),
// // //   });

// // //   await collection.doc('assess_strength_test').set({
// // //     'id': 'assess_002',
// // //     'title': 'Strength Assessment',
// // //     'description': 'Test your upper body strength.',
// // //     'type': 'test',
// // //     'questions': [
// // //       {'q': 'Max bench press weight?', 'options': ['<50kg', '50-80kg', '>80kg']},
// // //       {'q': 'Squat reps?', 'options': ['0-5', '6-10', '11+']},
// // //     ],
// // //     'userId': null,
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-03T12:00:00Z')),
// // //   });

// // //   await collection.doc('assess_flexibility_eval').set({
// // //     'id': 'assess_003',
// // //     'title': 'Flexibility Evaluation',
// // //     'description': 'Measure your range of motion.',
// // //     'type': 'quiz',
// // //     'questions': [
// // //       {'q': 'Can you touch your toes?', 'options': ['Yes easily', 'With effort', 'No']},
// // //       {'q': 'Shoulder rotation comfort?', 'options': ['Full', 'Limited', 'Painful']},
// // //     ],
// // //     'userId': 'uid_jane123',
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-07T11:30:00Z')),
// // //   });

// // //   await collection.doc('assess_endurance_challenge').set({
// // //     'id': 'assess_004',
// // //     'title': 'Endurance Challenge',
// // //     'description': 'Track your stamina over time.',
// // //     'type': 'test',
// // //     'questions': [
// // //       {'q': 'Run time for 5km?', 'options': ['<25min', '25-35min', '>35min']},
// // //       {'q': 'Daily steps average?', 'options': ['<5000', '5000-10000', '>10000']},
// // //     ],
// // //     'userId': null,
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-12T15:20:00Z')),
// // //   });
// // // }

// // // Future<void> _seedAppointments(Firestore firestore) async {
// // //   final collection = firestore.collection('appointments');

// // //   await collection.doc('appt_personal_001').set({
// // //     'id': 'appt_001',
// // //     'trainerId': 'uid_trainer_alex',
// // //     'slotId': 'morning_9am',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
// // //     'durationMinutes': 60,
// // //     'maxCapacity': 1,
// // //     'type': 'personal_training',
// // //     'status': 'available',
// // //   });

// // //   await collection.doc('appt_group_yoga_001').set({
// // //     'id': 'appt_002',
// // //     'trainerId': 'uid_trainer_sarah',
// // //     'slotId': 'evening_6pm',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
// // //     'durationMinutes': 45,
// // //     'maxCapacity': 10,
// // //     'type': 'group_yoga',
// // //     'status': 'available',
// // //   });

// // //   await collection.doc('appt_strength_session_001').set({
// // //     'id': 'appt_003',
// // //     'trainerId': 'uid_trainer_mike',
// // //     'slotId': 'afternoon_2pm',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
// // //     'durationMinutes': 90,
// // //     'maxCapacity': 1,
// // //     'type': 'strength_training',
// // //     'status': 'available',
// // //   });

// // //   await collection.doc('appt_cardio_class_001').set({
// // //     'id': 'appt_004',
// // //     'trainerId': 'uid_trainer_jess',
// // //     'slotId': 'morning_7am',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
// // //     'durationMinutes': 30,
// // //     'maxCapacity': 15,
// // //     'type': 'cardio_class',
// // //     'status': 'available',
// // //   });
// // // }

// // // Future<void> _seedBookings(Firestore firestore) async {
// // //   final collection = firestore.collection('bookings');

// // //   await collection.doc('book_personal_jane').set({
// // //     'id': 'book_001',
// // //     'userId': 'uid_jane123',
// // //     'appointmentId': 'appt_001',
// // //     'slotId': 'morning_9am',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
// // //     'status': 'confirmed',
// // //     'notes': 'Focus on cardio',
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-20T10:00:00Z')),
// // //   });

// // //   await collection.doc('book_yoga_john').set({
// // //     'id': 'book_002',
// // //     'userId': 'uid_john456',
// // //     'appointmentId': 'appt_002',
// // //     'slotId': 'evening_6pm',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
// // //     'status': 'confirmed',
// // //     'notes': 'Beginner level',
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-21T13:45:00Z')),
// // //   });

// // //   await collection.doc('book_strength_anna').set({
// // //     'id': 'book_003',
// // //     'userId': 'uid_anna789',
// // //     'appointmentId': 'appt_003',
// // //     'slotId': 'afternoon_2pm',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
// // //     'status': 'pending',
// // //     'notes': 'Include warm-up',
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-22T09:20:00Z')),
// // //   });

// // //   await collection.doc('book_cardio_mike').set({
// // //     'id': 'book_004',
// // //     'userId': 'uid_mike101',
// // //     'appointmentId': 'appt_004',
// // //     'slotId': 'morning_7am',
// // //     'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
// // //     'status': 'confirmed',
// // //     'notes': 'High intensity',
// // //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-23T17:10:00Z')),
// // //   });
// // // }



// // // seed_data.dart
// // // Standalone script to seed sample data into Firestore.
// // // Run with: dart run seed_data.dart
// // // Ensure you have firebase_core and cloud_firestore in your pubspec.yaml.
// // // If running independently, create a new Dart project and add dependencies:
// // // dart pub add firebase_core cloud_firestore

// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/widgets.dart';
// // import 'firebase_options.dart';

// // Future<void> main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );
// //   await _seedAssessments(FirebaseFirestore.instance);
// //   await _seedAppointments(FirebaseFirestore.instance);
// //   await _seedBookings(FirebaseFirestore.instance);
// //   print('Data seeding completed successfully!');
// // }

// // Future<void> _seedUsers(FirebaseFirestore firestore) async {
// //   final collection = firestore.collection('users');

// //   await collection.doc('user_jane_doe').set({
// //     'id': 'uid_jane123',
// //     'email': 'jane.doe@example.com',
// //     'firstName': 'Jane',
// //     'lastName': 'Doe',
// //     'age': 28,
// //     'weightKg': 65.5,
// //     'heightCm': 165,
// //     'goals': ['weight_loss', 'cardio'],
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T10:00:00Z')),
// //   });

// //   await collection.doc('user_john_smith').set({
// //     'id': 'uid_john456',
// //     'email': 'john.smith@example.com',
// //     'firstName': 'John',
// //     'lastName': 'Smith',
// //     'age': 35,
// //     'weightKg': 80.0,
// //     'heightCm': 180,
// //     'goals': ['muscle_gain', 'strength'],
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-05T14:30:00Z')),
// //   });

// //   await collection.doc('user_anna_lee').set({
// //     'id': 'uid_anna789',
// //     'email': 'anna.lee@example.com',
// //     'firstName': 'Anna',
// //     'lastName': 'Lee',
// //     'age': 24,
// //     'weightKg': 55.0,
// //     'heightCm': 160,
// //     'goals': ['flexibility', 'yoga'],
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-10T09:15:00Z')),
// //   });

// //   await collection.doc('user_mike_brown').set({
// //     'id': 'uid_mike101',
// //     'email': 'mike.brown@example.com',
// //     'firstName': 'Mike',
// //     'lastName': 'Brown',
// //     'age': 42,
// //     'weightKg': 90.5,
// //     'heightCm': 175,
// //     'goals': ['endurance', 'running'],
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-15T16:45:00Z')),
// //   });
// // }

// // Future<void> _seedAssessments(FirebaseFirestore firestore) async {
// //   final collection = firestore.collection('assessments');

// //   await collection.doc('assess_cardio_quiz').set({
// //     'id': 'assess_001',
// //     'title': 'Cardio Fitness Quiz',
// //     'description': 'Assess your cardiovascular endurance.',
// //     'type': 'quiz',
// //     'questions': [
// //       {'q': 'How many push-ups can you do?', 'options': ['0-10', '11-20', '21+']},
// //       {'q': 'Resting heart rate?', 'options': ['<60', '60-80', '>80']},
// //     ],
// //     'userId': null,
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T08:00:00Z')),
// //   });

// //   await collection.doc('assess_strength_test').set({
// //     'id': 'assess_002',
// //     'title': 'Strength Assessment',
// //     'description': 'Test your upper body strength.',
// //     'type': 'test',
// //     'questions': [
// //       {'q': 'Max bench press weight?', 'options': ['<50kg', '50-80kg', '>80kg']},
// //       {'q': 'Squat reps?', 'options': ['0-5', '6-10', '11+']},
// //     ],
// //     'userId': null,
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-03T12:00:00Z')),
// //   });

// //   await collection.doc('assess_flexibility_eval').set({
// //     'id': 'assess_003',
// //     'title': 'Flexibility Evaluation',
// //     'description': 'Measure your range of motion.',
// //     'type': 'quiz',
// //     'questions': [
// //       {'q': 'Can you touch your toes?', 'options': ['Yes easily', 'With effort', 'No']},
// //       {'q': 'Shoulder rotation comfort?', 'options': ['Full', 'Limited', 'Painful']},
// //     ],
// //     'userId': 'uid_jane123',
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-07T11:30:00Z')),
// //   });

// //   await collection.doc('assess_endurance_challenge').set({
// //     'id': 'assess_004',
// //     'title': 'Endurance Challenge',
// //     'description': 'Track your stamina over time.',
// //     'type': 'test',
// //     'questions': [
// //       {'q': 'Run time for 5km?', 'options': ['<25min', '25-35min', '>35min']},
// //       {'q': 'Daily steps average?', 'options': ['<5000', '5000-10000', '>10000']},
// //     ],
// //     'userId': null,
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-12T15:20:00Z')),
// //   });
// // }

// // Future<void> _seedAppointments(FirebaseFirestore firestore) async {
// //   final collection = firestore.collection('appointments');

// //   await collection.doc('appt_personal_001').set({
// //     'id': 'appt_001',
// //     'trainerId': 'uid_trainer_alex',
// //     'slotId': 'morning_9am',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
// //     'durationMinutes': 60,
// //     'maxCapacity': 1,
// //     'type': 'personal_training',
// //     'status': 'available',
// //   });

// //   await collection.doc('appt_group_yoga_001').set({
// //     'id': 'appt_002',
// //     'trainerId': 'uid_trainer_sarah',
// //     'slotId': 'evening_6pm',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
// //     'durationMinutes': 45,
// //     'maxCapacity': 10,
// //     'type': 'group_yoga',
// //     'status': 'available',
// //   });

// //   await collection.doc('appt_strength_session_001').set({
// //     'id': 'appt_003',
// //     'trainerId': 'uid_trainer_mike',
// //     'slotId': 'afternoon_2pm',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
// //     'durationMinutes': 90,
// //     'maxCapacity': 1,
// //     'type': 'strength_training',
// //     'status': 'available',
// //   });

// //   await collection.doc('appt_cardio_class_001').set({
// //     'id': 'appt_004',
// //     'trainerId': 'uid_trainer_jess',
// //     'slotId': 'morning_7am',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
// //     'durationMinutes': 30,
// //     'maxCapacity': 15,
// //     'type': 'cardio_class',
// //     'status': 'available',
// //   });
// // }

// // Future<void> _seedBookings(FirebaseFirestore firestore) async {
// //   final collection = firestore.collection('bookings');

// //   await collection.doc('book_personal_jane').set({
// //     'id': 'book_001',
// //     'userId': 'uid_jane123',
// //     'appointmentId': 'appt_001',
// //     'slotId': 'morning_9am',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
// //     'status': 'confirmed',
// //     'notes': 'Focus on cardio',
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-20T10:00:00Z')),
// //   });

// //   await collection.doc('book_yoga_john').set({
// //     'id': 'book_002',
// //     'userId': 'uid_john456',
// //     'appointmentId': 'appt_002',
// //     'slotId': 'evening_6pm',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
// //     'status': 'confirmed',
// //     'notes': 'Beginner level',
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-21T13:45:00Z')),
// //   });

// //   await collection.doc('book_strength_anna').set({
// //     'id': 'book_003',
// //     'userId': 'uid_anna789',
// //     'appointmentId': 'appt_003',
// //     'slotId': 'afternoon_2pm',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
// //     'status': 'pending',
// //     'notes': 'Include warm-up',
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-22T09:20:00Z')),
// //   });

// //   await collection.doc('book_cardio_mike').set({
// //     'id': 'book_004',
// //     'userId': 'uid_mike101',
// //     'appointmentId': 'appt_004',
// //     'slotId': 'morning_7am',
// //     'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
// //     'status': 'confirmed',
// //     'notes': 'High intensity',
// //     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-23T17:10:00Z')),
// //   });
// // }


// import 'package:cloud_firestore/cloud_firestore.dart';

// Future<void> clearCollection(FirebaseFirestore firestore, String collectionPath) async {
//   try {
//     final snapshot = await firestore.collection(collectionPath).get();
//     final batch = firestore.batch();
//     for (var doc in snapshot.docs) {
//       batch.delete(doc.reference);
//     }
//     await batch.commit();
//   } catch (e) {
//     print('Error clearing collection $collectionPath: $e');
//     rethrow;
//   }
// }

// Future<void> seedData(FirebaseFirestore firestore) async {
//   try {
//     // Clear collections to avoid duplicates
//     await clearCollection(firestore, 'users');
//     await clearCollection(firestore, 'assessments');
//     await clearCollection(firestore, 'appointments');
//     await clearCollection(firestore, 'bookings');

//     await _seedUsers(firestore);
//     await _seedAssessments(firestore);
//     await _seedAppointments(firestore);
//     await _seedBookings(firestore);
//     print('Data seeding completed successfully!');
//   } catch (e) {
//     print('Error during seeding: $e');
//     rethrow;
//   }
// }

// Future<void> _seedUsers(FirebaseFirestore firestore) async {
//   final batch = firestore.batch();
//   final collection = firestore.collection('users');

//   batch.set(collection.doc('user_jane_doe'), {
//     'id': 'uid_jane123',
//     'email': 'jane.doe@example.com',
//     'firstName': 'Jane',
//     'lastName': 'Doe',
//     'age': 28,
//     'weightKg': 65.5,
//     'heightCm': 165,
//     'goals': ['weight_loss', 'cardio'],
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T10:00:00Z')),
//   });

//   batch.set(collection.doc('user_john_smith'), {
//     'id': 'uid_john456',
//     'email': 'john.smith@example.com',
//     'firstName': 'John',
//     'lastName': 'Smith',
//     'age': 35,
//     'weightKg': 80.0,
//     'heightCm': 180,
//     'goals': ['muscle_gain', 'strength'],
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-05T14:30:00Z')),
//   });

//   batch.set(collection.doc('user_anna_lee'), {
//     'id': 'uid_anna789',
//     'email': 'anna.lee@example.com',
//     'firstName': 'Anna',
//     'lastName': 'Lee',
//     'age': 24,
//     'weightKg': 55.0,
//     'heightCm': 160,
//     'goals': ['flexibility', 'yoga'],
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-10T09:15:00Z')),
//   });

//   batch.set(collection.doc('user_mike_brown'), {
//     'id': 'uid_mike101',
//     'email': 'mike.brown@example.com',
//     'firstName': 'Mike',
//     'lastName': 'Brown',
//     'age': 42,
//     'weightKg': 90.5,
//     'heightCm': 175,
//     'goals': ['endurance', 'running'],
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-15T16:45:00Z')),
//   });

//   try {
//     await batch.commit();
//   } catch (e) {
//     print('Error seeding users: $e');
//     rethrow;
//   }
// }

// Future<void> _seedAssessments(FirebaseFirestore firestore) async {
//   final batch = firestore.batch();
//   final collection = firestore.collection('assessments');

//   batch.set(collection.doc('assess_cardio_quiz'), {
//     'id': 'assess_001',
//     'title': 'Cardio Fitness Quiz',
//     'description': 'Assess your cardiovascular endurance.',
//     'type': 'quiz',
//     'questions': [
//       {'q': 'How many push-ups can you do?', 'options': ['0-10', '11-20', '21+']},
//       {'q': 'Resting heart rate?', 'options': ['<60', '60-80', '>80']},
//     ],
//     'userId': null,
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T08:00:00Z')),
//   });

//   batch.set(collection.doc('assess_strength_test'), {
//     'id': 'assess_002',
//     'title': 'Strength Assessment',
//     'description': 'Test your upper body strength.',
//     'type': 'test',
//     'questions': [
//       {'q': 'Max bench press weight?', 'options': ['<50kg', '50-80kg', '>80kg']},
//       {'q': 'Squat reps?', 'options': ['0-5', '6-10', '11+']},
//     ],
//     'userId': null,
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-03T12:00:00Z')),
//   });

//   batch.set(collection.doc('assess_flexibility_eval'), {
//     'id': 'assess_003',
//     'title': 'Flexibility Evaluation',
//     'description': 'Measure your range of motion.',
//     'type': 'quiz',
//     'questions': [
//       {'q': 'Can you touch your toes?', 'options': ['Yes easily', 'With effort', 'No']},
//       {'q': 'Shoulder rotation comfort?', 'options': ['Full', 'Limited', 'Painful']},
//     ],
//     'userId': 'uid_jane123',
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-07T11:30:00Z')),
//   });

//   batch.set(collection.doc('assess_endurance_challenge'), {
//     'id': 'assess_004',
//     'title': 'Endurance Challenge',
//     'description': 'Track your stamina over time.',
//     'type': 'test',
//     'questions': [
//       {'q': 'Run time for 5km?', 'options': ['<25min', '25-35min', '>35min']},
//       {'q': 'Daily steps average?', 'options': ['<5000', '5000-10000', '>10000']},
//     ],
//     'userId': null,
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-12T15:20:00Z')),
//   });

//   try {
//     await batch.commit();
//   } catch (e) {
//     print('Error seeding assessments: $e');
//     rethrow;
//   }
// }

// Future<void> _seedAppointments(FirebaseFirestore firestore) async {
//   final batch = firestore.batch();
//   final collection = firestore.collection('appointments');

//   batch.set(collection.doc('appt_personal_001'), {
//     'id': 'appt_001',
//     'trainerId': 'uid_trainer_alex',
//     'slotId': 'morning_9am',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
//     'durationMinutes': 60,
//     'maxCapacity': 1,
//     'type': 'personal_training',
//     'status': 'available',
//   });

//   batch.set(collection.doc('appt_group_yoga_001'), {
//     'id': 'appt_002',
//     'trainerId': 'uid_trainer_sarah',
//     'slotId': 'evening_6pm',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
//     'durationMinutes': 45,
//     'maxCapacity': 10,
//     'type': 'group_yoga',
//     'status': 'available',
//   });

//   batch.set(collection.doc('appt_strength_session_001'), {
//     'id': 'appt_003',
//     'trainerId': 'uid_trainer_mike',
//     'slotId': 'afternoon_2pm',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
//     'durationMinutes': 90,
//     'maxCapacity': 1,
//     'type': 'strength_training',
//     'status': 'available',
//   });

//   batch.set(collection.doc('appt_cardio_class_001'), {
//     'id': 'appt_004',
//     'trainerId': 'uid_trainer_jess',
//     'slotId': 'morning_7am',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
//     'durationMinutes': 30,
//     'maxCapacity': 15,
//     'type': 'cardio_class',
//     'status': 'available',
//   });

//   try {
//     await batch.commit();
//   } catch (e) {
//     print('Error seeding appointments: $e');
//     rethrow;
//   }
// }

// Future<void> _seedBookings(FirebaseFirestore firestore) async {
//   final batch = firestore.batch();
//   final collection = firestore.collection('bookings');

//   batch.set(collection.doc('book_personal_jane'), {
//     'id': 'book_001',
//     'userId': 'uid_jane123',
//     'appointmentId': 'appt_001',
//     'slotId': 'morning_9am',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
//     'status': 'confirmed',
//     'notes': 'Focus on cardio',
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-20T10:00:00Z')),
//   });

//   batch.set(collection.doc('book_yoga_john'), {
//     'id': 'book_002',
//     'userId': 'uid_john456',
//     'appointmentId': 'appt_002',
//     'slotId': 'evening_6pm',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
//     'status': 'confirmed',
//     'notes': 'Beginner level',
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-21T13:45:00Z')),
//   });

//   batch.set(collection.doc('book_strength_anna'), {
//     'id': 'book_003',
//     'userId': 'uid_anna789',
//     'appointmentId': 'appt_003',
//     'slotId': 'afternoon_2pm',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
//     'status': 'pending',
//     'notes': 'Include warm-up',
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-22T09:20:00Z')),
//   });

//   batch.set(collection.doc('book_cardio_mike'), {
//     'id': 'book_004',
//     'userId': 'uid_mike101',
//     'appointmentId': 'appt_004',
//     'slotId': 'morning_7am',
//     'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
//     'status': 'confirmed',
//     'notes': 'High intensity',
//     'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-23T17:10:00Z')),
//   });

//   try {
//     await batch.commit();
//   } catch (e) {
//     print('Error seeding bookings: $e');
//     rethrow;
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

// Email validation regex (from SignUpScreen)
final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

Future<void> clearCollection(FirebaseFirestore firestore, String collectionPath) async {
  try {
    final snapshot = await firestore.collection(collectionPath).get();
    final batch = firestore.batch();
    for (var doc in snapshot.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  } catch (e) {
    print('Error clearing collection $collectionPath: $e');
    rethrow;
  }
}

Future<void> seedData(FirebaseFirestore firestore) async {
  try {
    // Clear collections to avoid duplicates
    await clearCollection(firestore, 'users');
    await clearCollection(firestore, 'assessments');
    await clearCollection(firestore, 'appointments');
    await clearCollection(firestore, 'bookings');

    await _seedUsers(firestore);
    await _seedAssessments(firestore);
    await _seedAppointments(firestore);
    await _seedBookings(firestore);
    print('Data seeding completed successfully!');
  } catch (e) {
    print('Error during seeding: $e');
    rethrow;
  }
}

Future<void> _seedUsers(FirebaseFirestore firestore) async {
  final batch = firestore.batch();
  final collection = firestore.collection('users');

  // User data aligned with SignUpScreen
  final users = [
    {
      'id': 'uid_jane123',
      'email': 'jane.doe@example.com',
      'firstName': 'Jane',
      'lastName': 'Doe',
      'age': 28,
      'weightKg': 65.5,
      'heightCm': 165,
      'goals': ['weight_loss', 'cardio'],
      'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T10:00:00Z')),
    },
    {
      'id': 'uid_john456',
      'email': 'john.smith@example.com',
      'firstName': 'John',
      'lastName': 'Smith',
      'age': 35,
      'weightKg': 80.0,
      'heightCm': 180,
      'goals': ['muscle_gain', 'strength'],
      'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-05T14:30:00Z')),
    },
    {
      'id': 'uid_anna789',
      'email': 'anna.lee@example.com',
      'firstName': 'Anna',
      'lastName': 'Lee',
      'age': 24,
      'weightKg': 55.0,
      'heightCm': 160,
      'goals': ['flexibility', 'yoga'],
      'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-10T09:15:00Z')),
    },
    {
      'id': 'uid_mike101',
      'email': 'mike.brown@example.com',
      'firstName': 'Mike',
      'lastName': 'Brown',
      'age': 42,
      'weightKg': 90.5,
      'heightCm': 175,
      'goals': ['endurance', 'running'],
      'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-15T16:45:00Z')),
    },
  ];

  // Validate user data (mimicking SignUpScreen validation)
  for (var user in users) {
    final email = user['email'] as String;
    final firstName = user['firstName'] as String;
    final lastName = user['lastName'] as String;

    if (!_emailRegex.hasMatch(email)) {
      throw Exception('Invalid email in seed data: $email');
    }
    if (firstName.isEmpty || lastName.isEmpty) {
      throw Exception('First name and last name are required for user: $email');
    }
    // Optional fields (age, weightKg, heightCm, goals) are allowed to be null/empty
    batch.set(collection.doc('user_${firstName.toLowerCase()}_${lastName.toLowerCase()}'), user);
  }

  try {
    await batch.commit();
  } catch (e) {
    print('Error seeding users: $e');
    rethrow;
  }
}

Future<void> _seedAssessments(FirebaseFirestore firestore) async {
  final batch = firestore.batch();
  final collection = firestore.collection('assessments');

  batch.set(collection.doc('assess_cardio_quiz'), {
    'id': 'assess_001',
    'title': 'Cardio Fitness Quiz',
    'description': 'Assess your cardiovascular endurance.',
    'type': 'quiz',
    'questions': [
      {'q': 'How many push-ups can you do?', 'options': ['0-10', '11-20', '21+']},
      {'q': 'Resting heart rate?', 'options': ['<60', '60-80', '>80']},
    ],
    'userId': null,
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-01T08:00:00Z')),
  });

  batch.set(collection.doc('assess_strength_test'), {
    'id': 'assess_002',
    'title': 'Strength Assessment',
    'description': 'Test your upper body strength.',
    'type': 'test',
    'questions': [
      {'q': 'Max bench press weight?', 'options': ['<50kg', '50-80kg', '>80kg']},
      {'q': 'Squat reps?', 'options': ['0-5', '6-10', '11+']},
    ],
    'userId': null,
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-03T12:00:00Z')),
  });

  batch.set(collection.doc('assess_flexibility_eval'), {
    'id': 'assess_003',
    'title': 'Flexibility Evaluation',
    'description': 'Measure your range of motion.',
    'type': 'quiz',
    'questions': [
      {'q': 'Can you touch your toes?', 'options': ['Yes easily', 'With effort', 'No']},
      {'q': 'Shoulder rotation comfort?', 'options': ['Full', 'Limited', 'Painful']},
    ],
    'userId': 'uid_jane123',
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-07T11:30:00Z')),
  });

  batch.set(collection.doc('assess_endurance_challenge'), {
    'id': 'assess_004',
    'title': 'Endurance Challenge',
    'description': 'Track your stamina over time.',
    'type': 'test',
    'questions': [
      {'q': 'Run time for 5km?', 'options': ['<25min', '25-35min', '>35min']},
      {'q': 'Daily steps average?', 'options': ['<5000', '5000-10000', '>10000']},
    ],
    'userId': null,
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-12T15:20:00Z')),
  });

  try {
    await batch.commit();
  } catch (e) {
    print('Error seeding assessments: $e');
    rethrow;
  }
}

Future<void> _seedAppointments(FirebaseFirestore firestore) async {
  final batch = firestore.batch();
  final collection = firestore.collection('appointments');

  batch.set(collection.doc('appt_personal_001'), {
    'id': 'appt_001',
    'trainerId': 'uid_trainer_alex',
    'slotId': 'morning_9am',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
    'durationMinutes': 60,
    'maxCapacity': 1,
    'type': 'personal_training',
    'status': 'available',
  });

  batch.set(collection.doc('appt_group_yoga_001'), {
    'id': 'appt_002',
    'trainerId': 'uid_trainer_sarah',
    'slotId': 'evening_6pm',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
    'durationMinutes': 45,
    'maxCapacity': 10,
    'type': 'group_yoga',
    'status': 'available',
  });

  batch.set(collection.doc('appt_strength_session_001'), {
    'id': 'appt_003',
    'trainerId': 'uid_trainer_mike',
    'slotId': 'afternoon_2pm',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
    'durationMinutes': 90,
    'maxCapacity': 1,
    'type': 'strength_training',
    'status': 'available',
  });

  batch.set(collection.doc('appt_cardio_class_001'), {
    'id': 'appt_004',
    'trainerId': 'uid_trainer_jess',
    'slotId': 'morning_7am',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
    'durationMinutes': 30,
    'maxCapacity': 15,
    'type': 'cardio_class',
    'status': 'available',
  });

  try {
    await batch.commit();
  } catch (e) {
    print('Error seeding appointments: $e');
    rethrow;
  }
}

Future<void> _seedBookings(FirebaseFirestore firestore) async {
  final batch = firestore.batch();
  final collection = firestore.collection('bookings');

  batch.set(collection.doc('book_personal_jane'), {
    'id': 'book_001',
    'userId': 'uid_jane123',
    'appointmentId': 'appt_001',
    'slotId': 'morning_9am',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-25T09:00:00Z')),
    'status': 'confirmed',
    'notes': 'Focus on cardio',
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-20T10:00:00Z')),
  });

  batch.set(collection.doc('book_yoga_john'), {
    'id': 'book_002',
    'userId': 'uid_john456',
    'appointmentId': 'appt_002',
    'slotId': 'evening_6pm',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-26T18:00:00Z')),
    'status': 'confirmed',
    'notes': 'Beginner level',
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-21T13:45:00Z')),
  });

  batch.set(collection.doc('book_strength_anna'), {
    'id': 'book_003',
    'userId': 'uid_anna789',
    'appointmentId': 'appt_003',
    'slotId': 'afternoon_2pm',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-27T14:00:00Z')),
    'status': 'pending',
    'notes': 'Include warm-up',
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-22T09:20:00Z')),
  });

  batch.set(collection.doc('book_cardio_mike'), {
    'id': 'book_004',
    'userId': 'uid_mike101',
    'appointmentId': 'appt_004',
    'slotId': 'morning_7am',
    'date': Timestamp.fromDate(DateTime.parse('2025-09-28T07:00:00Z')),
    'status': 'confirmed',
    'notes': 'High intensity',
    'createdAt': Timestamp.fromDate(DateTime.parse('2025-09-23T17:10:00Z')),
  });

  try {
    await batch.commit();
  } catch (e) {
    print('Error seeding bookings: $e');
    rethrow;
  }
}