import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:risovach/data/firebase_auth.dart';
import 'package:risovach/data/repository/repository.dart';
import 'package:risovach/domain/repository/repository.dart';
import 'package:risovach/presentation/routes/auth_service.dart';
import 'package:risovach/presentation/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final sharedPreferences = await SharedPreferences.getInstance();
  final firebase = FirebaseAuth.instanceFor(app: Firebase.app());
  // await firebase.setPersistence(Persistence.LOCAL);

  final authService = AuthService(firebase.currentUser != null);

  firebase.authStateChanges().listen((User? user) {
    if (user == null) {
      authService.logout();
    } else {
      authService.login();
    }
  });

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => firebase);
  sl.registerLazySingleton(() => authService);
  sl.registerLazySingleton(() => AppRouter(sl()));
  sl.registerLazySingleton<FirebaseAuthentication>(
    () => FirebaseAuthenticationImpl(sl()),
  );
  sl.registerLazySingleton<Repository>(() => RepositoryImpl(sl()));

}
