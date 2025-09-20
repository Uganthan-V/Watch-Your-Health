// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'core/app.dart';
// import 'core/theme.dart';
// import 'firebase_options.dart';

// // If you used FlutterFire CLI, import generated file:
// // import 'firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   await Firebase.initializeApp(); // Use this if you added platform files manually
//   // Enable Firestore cache in a single place if needed
//   runApp(const ProviderScope(child: AllyCareApp()));
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'core/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // ✅ required for web
  );

  runApp(const ProviderScope(child: AllyCareApp()));
}
