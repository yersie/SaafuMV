import 'package:flutter/foundation.dart';

class User {
  String username;
  String email;
  String bio = "Baby yoda I'am. Help I'm here to.";

  User({
    @required this.username,
    @required this.email,
  });
}
