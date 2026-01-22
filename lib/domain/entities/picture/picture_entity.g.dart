// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PictureEntity _$PictureEntityFromJson(Map<String, dynamic> json) =>
    _PictureEntity(
      username: json['username'] as String,
      picture: const Uint8ListConverter().fromJson(json['picture'] as List),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$PictureEntityToJson(_PictureEntity instance) =>
    <String, dynamic>{
      'username': instance.username,
      'picture': const Uint8ListConverter().toJson(instance.picture),
      'createdAt': instance.createdAt.toIso8601String(),
    };
