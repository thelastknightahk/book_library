// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchState _$SearchStateFromJson(Map<String, dynamic> json) {
  return _SearchState.fromJson(json);
}

/// @nodoc
mixin _$SearchState {
  List<BookData> get searchBookList => throw _privateConstructorUsedError;
  dynamic get showSearchLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({List<BookData> searchBookList, dynamic showSearchLoading});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchBookList = null,
    Object? showSearchLoading = freezed,
  }) {
    return _then(_value.copyWith(
      searchBookList: null == searchBookList
          ? _value.searchBookList
          : searchBookList // ignore: cast_nullable_to_non_nullable
              as List<BookData>,
      showSearchLoading: freezed == showSearchLoading
          ? _value.showSearchLoading
          : showSearchLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookData> searchBookList, dynamic showSearchLoading});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchBookList = null,
    Object? showSearchLoading = freezed,
  }) {
    return _then(_$SearchStateImpl(
      searchBookList: null == searchBookList
          ? _value._searchBookList
          : searchBookList // ignore: cast_nullable_to_non_nullable
              as List<BookData>,
      showSearchLoading: freezed == showSearchLoading
          ? _value.showSearchLoading!
          : showSearchLoading,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchStateImpl implements _SearchState {
  _$SearchStateImpl(
      {final List<BookData> searchBookList = const [],
      this.showSearchLoading = false})
      : _searchBookList = searchBookList;

  factory _$SearchStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchStateImplFromJson(json);

  final List<BookData> _searchBookList;
  @override
  @JsonKey()
  List<BookData> get searchBookList {
    if (_searchBookList is EqualUnmodifiableListView) return _searchBookList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchBookList);
  }

  @override
  @JsonKey()
  final dynamic showSearchLoading;

  @override
  String toString() {
    return 'SearchState(searchBookList: $searchBookList, showSearchLoading: $showSearchLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchBookList, _searchBookList) &&
            const DeepCollectionEquality()
                .equals(other.showSearchLoading, showSearchLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchBookList),
      const DeepCollectionEquality().hash(showSearchLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchStateImplToJson(
      this,
    );
  }
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {final List<BookData> searchBookList,
      final dynamic showSearchLoading}) = _$SearchStateImpl;

  factory _SearchState.fromJson(Map<String, dynamic> json) =
      _$SearchStateImpl.fromJson;

  @override
  List<BookData> get searchBookList;
  @override
  dynamic get showSearchLoading;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
