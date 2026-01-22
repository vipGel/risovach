import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_entity.freezed.dart';

part 'picture_entity.g.dart';

@freezed
abstract class PictureEntity with _$PictureEntity {
  const factory PictureEntity({
    required int id,
    required String username,
    required String url,
  }) = _PictureEntity;

  factory PictureEntity.fromJson(Map<String, dynamic> json) =>
      _$PictureEntityFromJson(json);
}