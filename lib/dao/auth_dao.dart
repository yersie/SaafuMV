import 'package:firebase_auth/firebase_auth.dart';

class AuthDao {
  AuthDao._();

  static final AuthDao _instance = AuthDao._();
  static AuthDao get instance => _instance;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

}