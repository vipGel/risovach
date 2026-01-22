import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/annotations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:risovach/presentation/screens/gallery/tool_item.dart';
import 'package:uuid/uuid.dart';

const double paddingAll = 20;

@RoutePage()
class PainterPage extends StatefulWidget {
  const PainterPage({super.key});

  @override
  State<PainterPage> createState() => _PainterPageState();
}

class _PainterPageState extends State<PainterPage> {
  final controller = DrawingController();
  String? imagePath;

  // final transformationController = TransformationController();

  @override
  void initState() {
    controller.setStyle(color: Colors.black);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void done() {}

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
          padding: const EdgeInsets.all(paddingAll),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PanelWidget(controller: controller, setImagePath: setImagePath),
              // LayoutBuilder(
              //   builder: (_, constraints) =>
              CanvasWidget(
                controller: controller,
                imagePath: imagePath,
                // transformationController: transformationController,
                // constraints: constraints,
                // ),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class PanelWidget extends StatelessWidget {
  final void Function(String) setImagePath;
  final DrawingController controller;

  const PanelWidget({
    super.key,
    required this.controller,
    required this.setImagePath,
  });

  void download() async {
    final selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory == null) return;

    final imageData = await controller.getImageData();
    final Uint8List? data = imageData?.buffer.asUint8List();
    if (data == null) return;

    final uuid = Uuid();
    final name = uuid.v4();
    final file = File('$selectedDirectory/$name.png');
    await file.writeAsBytes(data);
    Fluttertoast.showToast(msg: 'Сохранено');
  }

  void image() async {
    final file = await FilePicker.platform.pickFiles(type: FileType.image);
    if (file == null) return;

    setImagePath(file.files.single.path!);
    // controller.;
  }

  // void edit() {}

  // void erase() {}

  void palette() {}

  @override
  Widget build(BuildContext context) {
    return DrawingBar(
      style: HorizontalToolsBarStyle(mainAxisAlignment: MainAxisAlignment.end),
      controller: controller,
      tools: [
        TextButton(
          onPressed: download,
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(10),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Icon(Icons.download, size: 24),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: TextButton(
            onPressed: image,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Icon(Icons.image, size: 24),
          ),
        ),
        //todo import image
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ToolItem.pen(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ToolItem.eraser(),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: TextButton(
            onPressed: palette,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Icon(Icons.palette, size: 24),
          ),
        ),
      ],
    );
  }
}

class CanvasWidget extends StatelessWidget {
  final DrawingController controller;

  final String? imagePath;

  // final TransformationController transformationController;
  // final BoxConstraints constraints;

  const CanvasWidget({
    super.key,
    required this.controller,
    this.imagePath,
    // required this.transformationController,
    // required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 508,
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.circular(20),
      // color: Colors.white,
      // ),
      child: LayoutBuilder(
        builder: (_, constraints) => DrawingBoard(
          // boardScaleEnabled: false,
          controller: controller,
          // transformationController: transformationController,
          background: Container(
            width: constraints.maxWidth,
            height: 508,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              // todo use it
              // image: DecorationImage(image: AssetImage('assets/background/FlutterTestTask.png'))
              image: imagePath == null
                  ? null
                  : DecorationImage(image: FileImage(File(imagePath!))),
            ),
          ),
        ),
      ),
    );
  }
}
