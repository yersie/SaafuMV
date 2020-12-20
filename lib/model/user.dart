import 'package:flutter/foundation.dart';

class User {
  final String username;
  final String email;
  String bio = "Baby yoda I'am. Help I'm here to.";
  String profileImage;
  String fullName;
  int points;
  int rank;

  User({
    @required this.username,
    @required this.email,
    this.profileImage,
    this.fullName,
    this.points,
    this.rank,
  });
}
