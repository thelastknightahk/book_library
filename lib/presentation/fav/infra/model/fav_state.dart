import 'package:freezed_annotation/freezed_annotation.dart';

import 'fav_data.dart';

part 'fav_state.freezed.dart';
part 'fav_state.g.dart';

@freezed
class FavState with _$FavState {

  factory FavState({
    List<FavData>? FavList
  }) = _FavState;

  factory FavState.fromJson(Map<String, dynamic> json) => _$FavStateFromJson(json);
}