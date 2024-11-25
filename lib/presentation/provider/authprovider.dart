import 'package:flutter/material.dart';
import 'package:formfield/data/model/usermodel.dart';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;
  bool get isLoggedIn => _user != null;

  // Register a user and save in SharedPreferences
  Future<void> register(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        'user', jsonEncode(user.toJson())); // Save user data as JSON
  }

  // Login a user
  Future<bool> login(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('user');
    if (userData != null) {
      final savedUser = UserModel.fromJson(jsonDecode(userData));
      if (savedUser.email == email && savedUser.password == password) {
        _user = savedUser; // Set logged-in user
        notifyListeners();
        return true;
      }
    }
    return false; // Login failed
  }

  // Logout user
  Future<void> logout() async {
    _user = null;
    notifyListeners();
  }
}
