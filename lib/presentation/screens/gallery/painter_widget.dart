import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/presentation/bloc/picture/picture_cubit.dart';
import 'package:risovach/presentation/bloc/update/update_cubit.dart';
import 'package:risovach/presentation/bloc/upload/upload_cubit.dart';
import 'package:risovach/presentation/screens/gallery/panel_widget.dart';
import 'package:risovach/sl.dart';

import 'canvas_widget.dart';

/// real challenge
class PainterWidget extends StatefulWidget {
  // final PictureEntity? entity;
  final String? id;

  const PainterWidget({super.key, this.id});

  @override
  State<PainterWidget> createState() => _PainterWidgetState();
}

class _PainterWidgetState extends State<PainterWidget> {
  final controller = DrawingController();
  ImageProvider? provider;

  @override
  void initState() {
    controller.setStyle(color: Colors.black);
    controller.setStyle(strokeWidth: 3);
    if (widget.id != null) {
      context.read<PictureCubit>().picture(id: widget.id!, callback: setImage);
    }
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

    if (widget.id != null) {
      context.read<UpdateCubit>().update(
        entity: entity,
        id: widget.id!,
        callback: pop,
      );
    } else {
      context.read<UploadCubit>().upload(entity: entity, callback: pop);
    }

    pop();
  }

  void pop() => context.router.pop();

  //hardcode
  void setImagePath(String path) {
    setState(() => provider = FileImage(File(path)));
  }

  void setImage(PictureEntity entity) {
    setState(() => provider = MemoryImage(entity.picture));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<PictureCubit>().state;
    // PictureEntity? entity;
    // if (state is PictureStateLoaded && widget.id != null) {
    //   entity = state.entity;
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id == null ? 'Новое изображение' : 'Редактирование'),
        actions: [IconButton(onPressed: done, icon: Icon(Icons.done))],
      ),
      body: BackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PanelWidget(controller: controller, setImagePath: setImagePath),
              CanvasWidget(controller: controller, provider: provider),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
