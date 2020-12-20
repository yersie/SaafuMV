import 'dart:core';

class Validator {
  static final emailRegExp = new RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
    caseSensitive: false,
    multiLine: false,
  );

  static bool validateEmail(email) {
    return emailRegExp.hasMatch(email);
  }
}
