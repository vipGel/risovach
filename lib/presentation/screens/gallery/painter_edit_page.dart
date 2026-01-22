import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:risovach/presentation/screens/gallery/painter_widget.dart';

@RoutePage()
class PainterEditPage extends StatelessWidget {
  // final PictureEntity entity;
  final String id;

  const PainterEditPage({
    super.key,
    // required this.entity,
    @pathParam required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return PainterWidget( id: id);
  }
}
