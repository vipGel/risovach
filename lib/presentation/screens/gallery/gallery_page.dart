import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:risovach/core/widgets/primary_button.dart';
import 'package:risovach/domain/repository/repository.dart';
import 'package:risovach/presentation/routes/routes.gr.dart';
import 'package:risovach/sl.dart' as sl;

@RoutePage()
class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  void logout() {
    sl.sl<Repository>().signOut();
  }

  final list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Галерея'),
        leading: IconButton(onPressed: logout, icon: Icon(Icons.logout)),
      ),
      body: BackgroundImage(
        child: list.isEmpty ? EmptyListWidget() : ListWidget(),
      ),
    );
  }
}

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          PrimaryButton(
            label: 'Создать',
            onPressed: () => context.router.push(PainterRoute()),
          ),
        ],
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  //todo
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
