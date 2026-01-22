// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:risovach/presentation/screens/auth/sign_in_page.dart' as _i3;
import 'package:risovach/presentation/screens/auth/sign_up_page.dart' as _i4;
import 'package:risovach/presentation/screens/gallery/gallery_page.dart' as _i1;
import 'package:risovach/presentation/screens/gallery/painter_page.dart' as _i2;

/// generated route for
/// [_i1.GalleryPage]
class GalleryRoute extends _i5.PageRouteInfo<void> {
  const GalleryRoute({List<_i5.PageRouteInfo>? children})
    : super(GalleryRoute.name, initialChildren: children);

  static const String name = 'GalleryRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.GalleryPage();
    },
  );
}

/// generated route for
/// [_i2.PainterPage]
class PainterRoute extends _i5.PageRouteInfo<void> {
  const PainterRoute({List<_i5.PageRouteInfo>? children})
    : super(PainterRoute.name, initialChildren: children);

  static const String name = 'PainterRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.PainterPage();
    },
  );
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute({List<_i5.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.SignInPage();
    },
  );
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute({List<_i5.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignUpPage();
    },
  );
}
