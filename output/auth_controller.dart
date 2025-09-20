 
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../data/datasources/remote/auth_remote.dart';
import '../../data/repositories_impl/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';


final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) {
    final repo = AuthRepositoryImpl(AuthRemote());
    return AuthNotifier(repo);
  },
);

class AuthState {
  final bool isLoading;
  final String? userId;
  final String? email;
  AuthState({required this.isLoading, this.userId, this.email});
  factory AuthState.initial() => AuthState(isLoading: true);
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository repo;
  AuthNotifier(this.repo) : super(AuthState.initial()) {
    repo.authStateChanges().listen((u) {
      state = AuthState(isLoading: false, userId: u?.uid, email: u?.email);
    });
  }

  Future<void> signIn(String email, String password) async {
    state = AuthState(isLoading: true);
    await repo.signIn(email, password);
    final u = repo.currentUser();
    state = AuthState(isLoading: false, userId: u?.uid, email: u?.email);
  }

  Future<void> signOut() async {
    await repo.signOut();
  }
}
