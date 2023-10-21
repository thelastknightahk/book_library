
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/presentation/auth/infra/model/auth_state.dart';
import 'package:mvvm_book/presentation/auth/infra/repo/auth_reop_imp.dart';
import 'package:mvvm_book/presentation/auth/infra/repo/auth_repo.dart';

import '../infra/model/user.dart';

final authViewModelNotifierProvider =
    StateNotifierProvider<AuthViewModel, AuthState>(
        (ref) => AuthViewModel(ref.read(authRepoProvider)));

class AuthViewModel extends StateNotifier<AuthState> {
  final AuthRepo _repo;
  AuthViewModel(this._repo) : super(AuthState());

  Future<void> saveCurrentUser(User user) async { 
    _repo.saveCurrentUserData(user);
  }

  Future<void> clearCurrentUser() async {
    _repo.clearCurrentUserData();
  }

  Future<void> getCurrentUser() async {
    _repo.getCurrentUserData().then((value) {
      state = state.copyWith(currentUserData: value);
    });
  }

  void setPasswordVisible(bool visible) {
    state = state.copyWith(passwordVisible: visible);
  }
}
