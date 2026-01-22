// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PictureEntity _$PictureEntityFromJson(Map<String, dynamic> json) =>
    _PictureEntity(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PictureEntityToJson(_PictureEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'url': instance.url,
    };
