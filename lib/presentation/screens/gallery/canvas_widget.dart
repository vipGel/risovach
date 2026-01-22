import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

class CanvasWidget extends StatelessWidget {
  final DrawingController controller;

  final ImageProvider? provider;

  const CanvasWidget({super.key, required this.controller, this.provider});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 508,
      child: LayoutBuilder(
        builder: (_, constraints) => DrawingBoard(
          controller: controller,
          background: Container(
            width: constraints.maxWidth,
            height: 508,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              // hardcode again
              image: provider == null
                  ? null
                  : DecorationImage(image: provider!),
            ),
          ),
        ),
      ),
    );
  }
}
