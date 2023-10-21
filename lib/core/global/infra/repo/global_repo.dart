import 'package:mvvm_book/core/global/infra/model/user.dart';

abstract class GlobalRepo {
  Future<void> saveCurrentUserData(User user);
  Future<void> clearCurrentUserData();
  Future<User?> getCurrentUserData();
}
