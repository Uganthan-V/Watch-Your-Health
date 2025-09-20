 
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/legacy.dart';


final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(),
);

class AuthState {
  final bool isLoading;
  final User? user;

  AuthState({required this.isLoading, this.user});
  AuthState.initial() : isLoading = true, user = null;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthStateNotifier() : super(AuthState.initial()) {
    _auth.authStateChanges().listen((u) {
      state = AuthState(isLoading: false, user: u);
    });
  }

  Future<void> signIn(String email, String password) async {
    state = AuthState(isLoading: true, user: state.user);
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    state = AuthState(isLoading: false, user: _auth.currentUser);
  }

  Future<void> signOut() async {
    await _auth.signOut();
    state = AuthState(isLoading: false, user: null);
  }
}
