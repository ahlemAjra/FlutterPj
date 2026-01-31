import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class User {
  final String username;
  final String email;
  final String password;

  User({required this.username, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {'username': username, 'email': email, 'password': password};
  }

  factory User.fromMap(Map<dynamic, dynamic> map) {
    return User(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }
}

class AuthState {
  final bool isAuthenticated;
  final String? username;
  final String? error;

  AuthState({this.isAuthenticated = false, this.username, this.error});
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState()) {
    checkSession();
  }

  Future<void> checkSession() async {
    final sessionBox = Hive.box('session');
    final username = sessionBox.get('currentUser');
    if (username != null) {
      state = AuthState(isAuthenticated: true, username: username);
    }
  }

  Future<bool> signUp(String username, String email, String password) async {
    final usersBox = Hive.box('users');

    // Check if email already exists
    if (usersBox.containsKey(email)) {
      state = AuthState(error: 'Email already registered');
      return false;
    }

    final newUser = User(username: username, email: email, password: password);
    await usersBox.put(email, newUser.toMap());

    // Auto login after signup
    await login(email, password);
    return true;
  }

  Future<bool> login(String email, String password) async {
    final usersBox = Hive.box('users');
    final sessionBox = Hive.box('session');

    if (!usersBox.containsKey(email)) {
      state = AuthState(error: 'User not found');
      return false;
    }

    final userData = usersBox.get(email);
    final user = User.fromMap(userData);

    if (user.password != password) {
      state = AuthState(error: 'Incorrect password');
      return false;
    }

    // Success
    await sessionBox.put('currentUser', user.username);
    state = AuthState(isAuthenticated: true, username: user.username);
    return true;
  }

  Future<void> logout() async {
    final sessionBox = Hive.box('session');
    await sessionBox.delete('currentUser');
    state = AuthState(isAuthenticated: false);
  }

  Future<bool> verifyEmail(String email) async {
    final usersBox = Hive.box('users');
    if (usersBox.containsKey(email)) {
      return true;
    }
    state = AuthState(error: 'Email not found');
    return false;
  }

  Future<bool> resetPassword(String email, String newPassword) async {
    final usersBox = Hive.box('users');
    if (!usersBox.containsKey(email)) {
      state = AuthState(error: 'Email not found');
      return false;
    }

    final userData = usersBox.get(email);
    final user = User.fromMap(userData);

    final updatedUser = User(
      username: user.username,
      email: user.email,
      password: newPassword,
    );
    await usersBox.put(email, updatedUser.toMap());

    return true;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
