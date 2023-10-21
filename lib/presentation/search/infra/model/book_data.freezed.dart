// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookData _$BookDataFromJson(Map<String, dynamic> json) {
  return _BookData.fromJson(json);
}

/// @nodoc
mixin _$BookData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get authors => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDataCopyWith<BookData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDataCopyWith<$Res> {
  factory $BookDataCopyWith(BookData value, $Res Function(BookData) then) =
      _$BookDataCopyWithImpl<$Res, BookData>;
  @useResult
  $Res call(
      {String id, String title, String authors, String image, String url});
}

/// @nodoc
class _$BookDataCopyWithImpl<$Res, $Val extends BookData>
    implements $BookDataCopyWith<$Res> {
  _$BookDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? authors = null,
    Object? image = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDataImplCopyWith<$Res>
    implements $BookDataCopyWith<$Res> {
  factory _$$BookDataImplCopyWith(
          _$BookDataImpl value, $Res Function(_$BookDataImpl) then) =
      __$$BookDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String authors, String image, String url});
}

/// @nodoc
class __$$BookDataImplCopyWithImpl<$Res>
    extends _$BookDataCopyWithImpl<$Res, _$BookDataImpl>
    implements _$$BookDataImplCopyWith<$Res> {
  __$$BookDataImplCopyWithImpl(
      _$BookDataImpl _value, $Res Function(_$BookDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? authors = null,
    Object? image = null,
    Object? url = null,
  }) {
    return _then(_$BookDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDataImpl implements _BookData {
  _$BookDataImpl(
      {required this.id,
      required this.title,
      required this.authors,
      required this.image,
      required this.url});

  factory _$BookDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDataImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String authors;
  @override
  final String image;
  @override
  final String url;

  @override
  String toString() {
    return 'BookData(id: $id, title: $title, authors: $authors, image: $image, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.authors, authors) || other.authors == authors) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, authors, image, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDataImplCopyWith<_$BookDataImpl> get copyWith =>
      __$$BookDataImplCopyWithImpl<_$BookDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDataImplToJson(
      this,
    );
  }
}

abstract class _BookData implements BookData {
  factory _BookData(
      {required final String id,
      required final String title,
      required final String authors,
      required final String image,
      required final String url}) = _$BookDataImpl;

  factory _BookData.fromJson(Map<String, dynamic> json) =
      _$BookDataImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get authors;
  @override
  String get image;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$BookDataImplCopyWith<_$BookDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
