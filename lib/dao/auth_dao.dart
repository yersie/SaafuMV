class AuthDao {
  AuthDao._();

  static final AuthDao _instance = AuthDao._();
  static AuthDao get instance => _instance;

  Future<void> signUp(username, email, password) async {}

  Future<bool> signIn(username, password, email) async {}
}
