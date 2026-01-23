import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:flutter_drawing_board/helpers.dart';
import 'package:flutter_drawing_board/paint_contents.dart';
import 'package:flutter_svg/flutter_svg.dart';

// pure hardcode
// its not even my code
class ToolItem extends StatelessWidget {
  const ToolItem({
    super.key,
    required this.icon,
    required this.content,
    this.onTap,
    this.color,
    this.activeColor = Colors.blue,
    this.iconSize = 24,
    this.backgroundColor,
  });

  factory ToolItem.pen() {
    return ToolItem(
      onTap: (DrawingController controller) =>
          controller.setPaintContent(SimpleLine()),
      icon: 'assets/icons/pencil-alt.svg',
      content: SimpleLine,
    );
  }

  factory ToolItem.eraser() {
    return ToolItem(
      onTap: (DrawingController controller) =>
          controller.setPaintContent(Eraser()),
      icon: 'assets/icons/FlutterTestTask_Vector.svg',
      content: Eraser,
    );
  }

  final void Function(DrawingController controller)? onTap;
  final Type content;
  final String icon;
  final double iconSize;
  final Color? color;
  final Color activeColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final DrawingController? controller = DrawingControllerProvider.maybeOf(
      context,
    );

    if (controller == null) {
      throw Exception(
        'ToolItem must be placed within a DrawingBar or DrawingControllerProvider',
      );
    }

    return TextButton(
      onPressed: () => onTap?.call(controller),
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? Color.fromRGBO(255, 255, 255, 0.2),
        padding: const EdgeInsets.all(10),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: ExValueBuilder<DrawConfig>(
        valueListenable: controller.drawConfig,
        shouldRebuild: (DrawConfig p, DrawConfig n) =>
            p.contentType != n.contentType &&
            (p.contentType == content || n.contentType == content),
        builder: (BuildContext context, DrawConfig value, Widget? child) {
          final bool isActive = value.contentType == content;
          return SvgPicture.asset(
            icon,
            // size: iconSize,
            height: iconSize,
            width: iconSize,
            color: isActive ? Color.fromRGBO(137, 36, 231, 1) : (color ?? Colors.white),
          );
        },
      ),
    );
  }
}
