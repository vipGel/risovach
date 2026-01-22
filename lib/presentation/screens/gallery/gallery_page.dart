import 'package:auto_route/auto_route.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:risovach/core/widgets/primary_button.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Галерея'),
        leading: IconButton(onPressed: logout, icon: Icon(Icons.logout)),
        actions: [
          StreamBuilder(
            stream: sl.sl<Repository>().stream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.active) {
                return SizedBox();
              }

              final event = snapshot.data;
              if (event?.snapshot.children.isEmpty ?? true) {
                return SizedBox();
              }
              return IconButton(
                onPressed: () => context.router.push(PainterRoute()),
                icon: Icon(Icons.add),
              );
            },
          ),
        ],
      ),
      body: BackgroundImage(
        child: StreamBuilder<DatabaseEvent>(
          stream: sl.sl<Repository>().stream(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState != ConnectionState.active) {
              return Center(child: CircularProgressIndicator());
            }

            final event = snapshot.data;
            final entities = event?.snapshot.children;

            if (entities?.isEmpty ?? true) return EmptyListWidget();
            return ListWidget(snapshots: entities!.toList());
          },
        ),
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
  final List<DataSnapshot> snapshots;

  const ListWidget({super.key, required this.snapshots});

  @override
  Widget build(BuildContext context) {
    // final entities = snapshots.map((e) {
    //   final values = e.value as Map<dynamic, dynamic>;
    //   final entry = values.map((key, value) => MapEntry(key as String, value));
    //   return PictureEntity.fromJson(entry);
    // }).toList();

    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: 156,
      // ),
      itemCount: snapshots.length,
      itemBuilder: (_, idx) {
        final values = snapshots[idx].value as Map<dynamic, dynamic>;
        final entry = values.map((key, value) => MapEntry(key as String, value));
        final entity = PictureEntity.fromJson(entry);
        return GestureDetector(
          onTap: () => context.router.push(
            PainterEditRoute(entity: entity, id: snapshots[idx].key ?? ''),
          ),
          child: Container(
            margin: EdgeInsets.all(8),
            height: 156,
            width: 156,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: MemoryImage(entity.picture),
              ),
            ),
          ),
        );
      },
    );
  }
}
