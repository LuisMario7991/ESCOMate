import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    _isLoggedIn = true;
    notifyListeners(); // Notifica a los widgets para que se actualicen
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
