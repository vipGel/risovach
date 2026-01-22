import 'package:flutter/foundation.dart';

// simple service for auth
// works very fine surprisingly
class AuthService extends ChangeNotifier {
  bool _isAuthenticated;

  AuthService(bool initial) : _isAuthenticated = initial;

  bool get isAuthenticated => _isAuthenticated;

  void login() {
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}