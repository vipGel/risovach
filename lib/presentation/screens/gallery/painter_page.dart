import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:risovach/presentation/screens/gallery/panel_widget.dart';

import 'canvas_widget.dart';

/// real challenge
@RoutePage()
class PainterPage extends StatefulWidget {
  const PainterPage({super.key});

  @override
  State<PainterPage> createState() => _PainterPageState();
}

class _PainterPageState extends State<PainterPage> {
  final controller = DrawingController();
  String? imagePath;

  @override
  void initState() {
    controller.setStyle(color: Colors.black);
    controller.setStyle(strokeWidth: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void done() {
    //todo upload to firebaseDB
  }

  //hardcode
  void setImagePath(String path) => setState(() => imagePath = path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новое изображение'),
        actions: [IconButton(onPressed: done, icon: Icon(Icons.done))],
      ),
      body: BackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PanelWidget(controller: controller, setImagePath: setImagePath),
              CanvasWidget(controller: controller, imagePath: imagePath),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
