import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/global/infra/model/user.dart';
import 'package:mvvm_book/core/global/infra/repo/global_repo_imp.dart';

import '../infra/repo/global_repo.dart';

final globalViewModelNotifierProvider = ChangeNotifierProvider(
    (ref) => GlobalViewModel(ref.read(globalRepoProvider)));

class GlobalViewModel extends ChangeNotifier {
  final GlobalRepo _globalRepo;
  GlobalViewModel(this._globalRepo);

  User? _user;
  User? get currentUserData => _user;
  Future<void> saveCurrentUser(User user) async {
    _globalRepo.saveCurrentUserData(user);
  }

  Future<void> clearCurrentUser() async {
    _globalRepo.clearCurrentUserData();
  }

  Future<void> getCurrentUser() async {
    _globalRepo.getCurrentUserData().then((value) {
      _user = value;
    });
  }
}
