import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_entity.freezed.dart';

part 'picture_entity.g.dart';

@freezed
abstract class PictureEntity with _$PictureEntity {
  const factory PictureEntity({
    // String? id,
    required String username,
    @Uint8ListConverter()
    // i cant afford storage so i save images as int list lol
    required Uint8List picture,
    required DateTime createdAt,
  }) = _PictureEntity;

  factory PictureEntity.fromJson(Map<String, dynamic> json) =>
      _$PictureEntityFromJson(json);
}

class Uint8ListConverter implements JsonConverter<Uint8List, List<Object?>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<Object?> json) {
    return Uint8List.fromList(json.cast<int>());
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}
