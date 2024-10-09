import '../models/user.dart';
import 'package:get/get.dart';

class UsersDatabase {
  List<User> _allUsers = [];
  void addUser(User user) {
    _allUsers.add(user);
    Get.snackbar('Success ', "${user.username} is now a member!");
  }

  User getUserByID(int id) {
    return _allUsers.firstWhere((user) => user.userID == id);
  }

  List<User> getAllUsers() {
    return _allUsers;
  }
}
