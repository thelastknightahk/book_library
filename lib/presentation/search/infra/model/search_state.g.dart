// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchStateImpl _$$SearchStateImplFromJson(Map<String, dynamic> json) =>
    _$SearchStateImpl(
      searchBookList: (json['searchBookList'] as List<dynamic>?)
              ?.map((e) => BookData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      showSearchLoading: json['showSearchLoading'] ?? false,
    );

Map<String, dynamic> _$$SearchStateImplToJson(_$SearchStateImpl instance) =>
    <String, dynamic>{
      'searchBookList': instance.searchBookList,
      'showSearchLoading': instance.showSearchLoading,
    };
