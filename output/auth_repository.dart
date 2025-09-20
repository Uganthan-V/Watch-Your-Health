 
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Stream<User?> authStateChanges();
  User? currentUser();
  Future<void> signIn(String email, String password);
  Future<void> signOut();
}
