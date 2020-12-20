import 'package:flutter/foundation.dart';

import '../model/user.dart';

class Auth with ChangeNotifier {
  User _user;

  User get user {
    if (_user != null) {
      return User(email: _user.email, username: _user.username);
    }
    return null;
  }

  void signUp(username, email) {
    _user = User(
      username: username,
      email: email,
    );
    notifyListeners();
  }

  void signIn(username, email) {
    _user = User(
      username: username,
      email: email,
    );
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
