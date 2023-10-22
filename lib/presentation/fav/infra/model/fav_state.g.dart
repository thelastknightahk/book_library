// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavStateImpl _$$FavStateImplFromJson(Map<String, dynamic> json) =>
    _$FavStateImpl(
      FavList: (json['FavList'] as List<dynamic>?)
          ?.map((e) => FavData.fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$$FavStateImplToJson(_$FavStateImpl instance) =>
    <String, dynamic>{
      'FavList': instance.FavList,
    };
