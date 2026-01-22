import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/domain/repository/repository.dart';
import 'package:risovach/presentation/screens/gallery/panel_widget.dart';
import 'package:risovach/sl.dart';

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

  void done() async {
    final imageData = await controller.getImageData();
    final Uint8List? data = imageData?.buffer.asUint8List();
    if (data == null) return;

    final displayName = sl<FirebaseAuth>().currentUser?.displayName;
    if (displayName == null) return;

    final entity = PictureEntity(
      username: displayName,
      picture: data,
      createdAt: DateTime.now(),
    );

    await sl<Repository>().uploadPicture(entity: entity);
    //todo loading screen and bloc
    pop();
  }

  void pop() => context.router.pop();

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
