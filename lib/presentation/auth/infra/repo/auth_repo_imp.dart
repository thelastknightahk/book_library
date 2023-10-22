
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/presentation/auth/infra/repo/auth_repo.dart';

import '../../../../core/utils/db_constants/db_contants.dart';
import '../model/user.dart';

final authRepoProvider = Provider<AuthRepo>((ref) => GlobalRepoImp());

class GlobalRepoImp implements AuthRepo {
  @override
  Future<void> clearCurrentUserData() async {
    final userBox = await Hive.openBox(DbConstants.userDB);
    userBox.clear();
   
  }

  @override
  Future<User?> getCurrentUserData() async {
    final userBox = await Hive.openBox(DbConstants.userDB);
    User? savedUser = userBox.get(DbConstants.userKey);
    return savedUser;
  }

  @override
  Future<void> saveCurrentUserData(User user) async {
    final userBox = await Hive.openBox(DbConstants.userDB);

    await userBox.put(DbConstants.userKey, user);
  }
}
