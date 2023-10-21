// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookDataImpl _$$BookDataImplFromJson(Map<String, dynamic> json) =>
    _$BookDataImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      authors: json['authors'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$BookDataImplToJson(_$BookDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'image': instance.image,
      'url': instance.url,
    };
