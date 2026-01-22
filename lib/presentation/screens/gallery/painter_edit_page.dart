import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';

@RoutePage()
class PainterEditPage extends StatefulWidget {
  final PictureEntity entity;
  final String id;

  const PainterEditPage({
    super.key,
    required this.entity,
    @pathParam required this.id,
  });

  @override
  State<PainterEditPage> createState() => _PainterEditPageState();
}

class _PainterEditPageState extends State<PainterEditPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
