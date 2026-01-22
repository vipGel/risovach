import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:risovach/presentation/bloc/sign_in/sign_in_cubit.dart';
import 'package:risovach/presentation/bloc/sign_up/sign_up_cubit.dart';
import 'package:risovach/presentation/bloc/update/update_cubit.dart';
import 'package:risovach/presentation/bloc/upload/upload_cubit.dart';
import 'package:risovach/presentation/routes/auth_service.dart';
import 'package:risovach/presentation/routes/routes.dart';
import 'package:risovach/sl.dart' as sl;

import 'presentation/bloc/picture/picture_cubit.dart';

void main() async {
  //TODO splash screen
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final router = sl.sl<AppRouter>();
  final authService = sl.sl<AuthService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(
        reevaluateListenable: authService,
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      builder: (_, router) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => SignUpCubit(sl.sl())),
            BlocProvider(create: (_) => SignInCubit(sl.sl())),
            BlocProvider(create: (_) => PictureCubit(sl.sl())),
            BlocProvider(create: (_) => UploadCubit(sl.sl())),
            BlocProvider(create: (_) => UpdateCubit(sl.sl())),
          ],
          child: ChangeNotifierProvider<AuthService>(
            create: (_) => authService,
            child: router,
          ),
        );
      },
    );
  }
}
