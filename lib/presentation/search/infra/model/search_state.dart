import 'package:freezed_annotation/freezed_annotation.dart';

import 'book_data.dart';

part 'search_state.freezed.dart';
part 'search_state.g.dart';

@freezed
class SearchState with _$SearchState {

  factory SearchState({
   @Default([]) List<BookData> searchBookList,
   @Default(false) showSearchLoading
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) => _$SearchStateFromJson(json);
}