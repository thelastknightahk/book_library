// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavState _$FavStateFromJson(Map<String, dynamic> json) {
  return _FavState.fromJson(json);
}

/// @nodoc
mixin _$FavState {
  List<FavData>? get FavList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavStateCopyWith<FavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavStateCopyWith<$Res> {
  factory $FavStateCopyWith(FavState value, $Res Function(FavState) then) =
      _$FavStateCopyWithImpl<$Res, FavState>;
  @useResult
  $Res call({List<FavData>? FavList});
}

/// @nodoc
class _$FavStateCopyWithImpl<$Res, $Val extends FavState>
    implements $FavStateCopyWith<$Res> {
  _$FavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? FavList = freezed,
  }) {
    return _then(_value.copyWith(
      FavList: freezed == FavList
          ? _value.FavList
          : FavList // ignore: cast_nullable_to_non_nullable
              as List<FavData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavStateImplCopyWith<$Res>
    implements $FavStateCopyWith<$Res> {
  factory _$$FavStateImplCopyWith(
          _$FavStateImpl value, $Res Function(_$FavStateImpl) then) =
      __$$FavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavData>? FavList});
}

/// @nodoc
class __$$FavStateImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$FavStateImpl>
    implements _$$FavStateImplCopyWith<$Res> {
  __$$FavStateImplCopyWithImpl(
      _$FavStateImpl _value, $Res Function(_$FavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? FavList = freezed,
  }) {
    return _then(_$FavStateImpl(
      FavList: freezed == FavList
          ? _value._FavList
          : FavList // ignore: cast_nullable_to_non_nullable
              as List<FavData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavStateImpl implements _FavState {
  _$FavStateImpl({final List<FavData>? FavList}) : _FavList = FavList;

  factory _$FavStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavStateImplFromJson(json);

  final List<FavData>? _FavList;
  @override
  List<FavData>? get FavList {
    final value = _FavList;
    if (value == null) return null;
    if (_FavList is EqualUnmodifiableListView) return _FavList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavState(FavList: $FavList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavStateImpl &&
            const DeepCollectionEquality().equals(other._FavList, _FavList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_FavList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      __$$FavStateImplCopyWithImpl<_$FavStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavStateImplToJson(
      this,
    );
  }
}

abstract class _FavState implements FavState {
  factory _FavState({final List<FavData>? FavList}) = _$FavStateImpl;

  factory _FavState.fromJson(Map<String, dynamic> json) =
      _$FavStateImpl.fromJson;

  @override
  List<FavData>? get FavList;
  @override
  @JsonKey(ignore: true)
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
