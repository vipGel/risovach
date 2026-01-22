import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:risovach/presentation/screens/gallery/tool_item.dart';
import 'package:uuid/uuid.dart';

import 'color_grid.dart';

class PanelWidget extends StatefulWidget {
  final void Function(String) setImagePath;
  final DrawingController controller;

  const PanelWidget({
    super.key,
    required this.controller,
    required this.setImagePath,
  });

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  void download() async {
    // gets directory
    final selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory == null) return;

    // gets image from the board
    final imageData = await widget.controller.getImageData();
    final Uint8List? data = imageData?.buffer.asUint8List();
    if (data == null) return;

    // generates random name
    final uuid = Uuid();
    final name = uuid.v4();

    // saves
    final file = File('$selectedDirectory/$name.png');
    await file.writeAsBytes(data);

    // toast notification
    Fluttertoast.showToast(msg: 'Сохранено');
  }

  void image() async {
    final file = await FilePicker.platform.pickFiles(type: FileType.image);
    if (file == null) return;

    // hardcode
    widget.setImagePath(file.files.single.path!);
  }

  @override
  Widget build(BuildContext context) {
    return DrawingBar(
      style: HorizontalToolsBarStyle(mainAxisAlignment: MainAxisAlignment.end),
      controller: widget.controller,
      tools:
          [
                Button(icon: Icons.download, onPressed: download),
                Button(icon: Icons.image, onPressed: image),
                ToolItem.pen(),
                ToolItem.eraser(),
                Popup(controller: widget.controller),
              ]
              .map((e) => Padding(padding: EdgeInsets.only(left: 12), child: e))
              .toList(),
    );
  }
}

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const Button({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(10),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: Icon(icon, size: 24),
    );
  }
}

class Popup extends StatefulWidget {
  final DrawingController controller;

  const Popup({super.key, required this.controller});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  final popupKey = GlobalKey<CustomPopupState>();

  void pickColor(Color color) {
    widget.controller.setStyle(color: color);
    setState(() {});
    popupKey.currentContext?.pop();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPopup(
      key: popupKey,
      contentRadius: 13,
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: GridView(
          padding: EdgeInsets.all(12),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 12,
          ),
          children: [
            ...colorGrid.map(
              (color) => GestureDetector(
                onTap: () => pickColor(color),
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    color: color,
                    border:
                        widget.controller.getColor.toARGB32() ==
                            color.toARGB32()
                        ? Border.all(color: Colors.white, width: 3)
                        : null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(Icons.palette, size: 24),
      ),
    );
  }
}
