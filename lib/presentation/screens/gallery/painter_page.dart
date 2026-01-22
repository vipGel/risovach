import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:risovach/presentation/screens/gallery/painter_widget.dart';

@RoutePage()
class PainterPage extends StatelessWidget {
  const PainterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PainterWidget();
  }
}
