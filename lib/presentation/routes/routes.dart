import 'package:auto_route/auto_route.dart';
import 'package:risovach/presentation/routes/routes.gr.dart';

import 'auth_service.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final AuthService authService;

  AppRouter(this.authService);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SignInRoute.page, path: '/sign_in'),
    AutoRoute(page: SignUpRoute.page, path: '/sign_up'),
    AutoRoute(
      page: GalleryRoute.page,
      initial: true,
      guards: [AuthGuard(authService)],
    ),
    AutoRoute(
      path: '/painter/new',
      page: PainterRoute.page,
      guards: [AuthGuard(authService)],
    ),
    // AutoRoute(
    //   path: '/painter/:id',
    //   page: PainterRoute.page,
    //   guards: [AuthGuard(authService)],
    // ),

    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

/// check if user is authenticated
class AuthGuard extends AutoRouteGuard {
  final AuthService authService;

  AuthGuard(this.authService);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(SignInRoute());
    }
  }
}
