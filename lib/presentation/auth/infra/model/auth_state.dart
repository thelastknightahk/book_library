import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_book/presentation/auth/infra/model/user.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {

  factory AuthState({
      @Default(false) bool passwordVisible,
        @Default(false) bool alreadyLogined,
    User? currentUserData,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}