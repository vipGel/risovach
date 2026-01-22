// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:risovach/domain/entities/picture/picture_entity.dart' as _i8;
import 'package:risovach/presentation/screens/auth/sign_in_page.dart' as _i4;
import 'package:risovach/presentation/screens/auth/sign_up_page.dart' as _i5;
import 'package:risovach/presentation/screens/gallery/gallery_page.dart' as _i1;
import 'package:risovach/presentation/screens/gallery/painter_edit_page.dart'
    as _i2;
import 'package:risovach/presentation/screens/gallery/painter_page.dart' as _i3;

/// generated route for
/// [_i1.GalleryPage]
class GalleryRoute extends _i6.PageRouteInfo<void> {
  const GalleryRoute({List<_i6.PageRouteInfo>? children})
    : super(GalleryRoute.name, initialChildren: children);

  static const String name = 'GalleryRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.GalleryPage();
    },
  );
}

/// generated route for
/// [_i2.PainterEditPage]
class PainterEditRoute extends _i6.PageRouteInfo<PainterEditRouteArgs> {
  PainterEditRoute({
    _i7.Key? key,
    required _i8.PictureEntity entity,
    required String id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         PainterEditRoute.name,
         args: PainterEditRouteArgs(key: key, entity: entity, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'PainterEditRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PainterEditRouteArgs>();
      return _i2.PainterEditPage(
        key: args.key,
        entity: args.entity,
        id: args.id,
      );
    },
  );
}

class PainterEditRouteArgs {
  const PainterEditRouteArgs({
    this.key,
    required this.entity,
    required this.id,
  });

  final _i7.Key? key;

  final _i8.PictureEntity entity;

  final String id;

  @override
  String toString() {
    return 'PainterEditRouteArgs{key: $key, entity: $entity, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PainterEditRouteArgs) return false;
    return key == other.key && entity == other.entity && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ entity.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i3.PainterPage]
class PainterRoute extends _i6.PageRouteInfo<void> {
  const PainterRoute({List<_i6.PageRouteInfo>? children})
    : super(PainterRoute.name, initialChildren: children);

  static const String name = 'PainterRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PainterPage();
    },
  );
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute({List<_i6.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignInPage();
    },
  );
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute({List<_i6.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SignUpPage();
    },
  );
}
