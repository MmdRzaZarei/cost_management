class User {
  static int _lastID = 0;
  String username;
  String password;
  int userID;
  User({required this.username, required this.password}) : userID = ++_lastID;
}
