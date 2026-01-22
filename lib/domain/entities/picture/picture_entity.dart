import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_entity.freezed.dart';

part 'picture_entity.g.dart';

@freezed
abstract class PictureEntity with _$PictureEntity {
  const factory PictureEntity({
    // required int id,
    required String username,
    @Uint8ListConverter()
    required Uint8List picture,
    required DateTime createdAt,
  }) = _PictureEntity;

  factory PictureEntity.fromJson(Map<String, dynamic> json) =>
      _$PictureEntityFromJson(json);
}

class Uint8ListConverter implements JsonConverter<Uint8List, List<int>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<int> json) {
    return Uint8List.fromList(json);
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}
