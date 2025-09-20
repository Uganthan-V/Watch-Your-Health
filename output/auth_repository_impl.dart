 
import 'package:firebase_auth/firebase_auth.dart';
import '../datasources/remote/auth_remote.dart';
import '../../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemote remote;
  AuthRepositoryImpl(this.remote);

  @override
  Stream<User?> authStateChanges() => remote.authStateChanges();

  @override
  User? currentUser() => remote.currentUser();

  @override
  Future<void> signIn(String email, String password) async {
    await remote.signIn(email, password);
  }

  @override
  Future<void> signOut() => remote.signOut();
}
