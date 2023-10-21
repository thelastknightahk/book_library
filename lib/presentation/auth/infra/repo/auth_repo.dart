import '../model/user.dart';

abstract class AuthRepo {
    Future<void> saveCurrentUserData(User user);
  Future<void> clearCurrentUserData();
  Future<User?> getCurrentUserData();
}