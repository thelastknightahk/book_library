import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/global/infra/model/user.dart';
import 'package:mvvm_book/core/global/infra/repo/global_repo.dart';

import '../../../utils/db_constants/db_contants.dart';

final globalRepoProvider = Provider<GlobalRepo>((ref) => GlobalRepoImp());

class GlobalRepoImp implements GlobalRepo {
  @override
  Future<void> clearCurrentUserData() async {
    final userBox = await Hive.openBox(DbConstants.userDB);
    userBox.clear();
    userBox.close();
  }

  @override
  Future<User?> getCurrentUserData() async {
    final userBox = await Hive.openBox(DbConstants.userDB);
    User savedUser = userBox.get(DbConstants.userKey);
    return savedUser;
  }

  @override
  Future<void> saveCurrentUserData(User user) async {
    final userBox = await Hive.openBox(DbConstants.userDB);

    await userBox.put(DbConstants.userKey, user);
  }
}
