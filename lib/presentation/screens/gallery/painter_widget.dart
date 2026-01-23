import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/presentation/bloc/picture/picture_cubit.dart';
import 'package:risovach/presentation/bloc/update/update_cubit.dart';
import 'package:risovach/presentation/bloc/upload/upload_cubit.dart';
import 'package:risovach/presentation/screens/gallery/panel_widget.dart';

import 'canvas_widget.dart';

/// real challenge
class PainterWidget extends StatefulWidget {
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
    if (widget.id != null) {
      context.read<UpdateCubit>().update(
        controller: controller,
        id: widget.id!,
        callback: pop,
      );
    } else {
      context.read<UploadCubit>().upload(controller: controller, callback: pop);
    }
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
    final state = context.watch<PictureCubit>().state;

    final updateState = context.watch<UpdateCubit>().state;
    final uploadState = context.watch<UploadCubit>().state;
    final isLoading =
        updateState is UpdateStateLoading ||
        uploadState is UploadStateLoading ||
        state is PictureStateLoading;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id == null ? 'Новое изображение' : 'Редактирование'),
        actions: [IconButton(onPressed: done, icon: Icon(Icons.done))],
      ),
      body: BackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              IgnorePointer(
                ignoring: isLoading,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PanelWidget(
                      controller: controller,
                      setImagePath: setImagePath,
                    ),
                    CanvasWidget(controller: controller, provider: provider),
                    SizedBox(),
                  ],
                ),
              ),
              if (isLoading) Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
