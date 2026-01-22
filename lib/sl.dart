import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
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
  final firebaseAuth = FirebaseAuth.instanceFor(app: Firebase.app());
  final firebaseDB = FirebaseDatabase.instanceFor(app: Firebase.app());

  final authService = AuthService(firebaseAuth.currentUser != null);

  firebaseAuth.authStateChanges().listen((User? user) {
    if (user == null) {
      authService.logout();
    } else {
      authService.login();
    }
  });

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => firebaseAuth);
  sl.registerLazySingleton(() => authService);
  sl.registerLazySingleton(() => AppRouter(sl()));
  sl.registerLazySingleton<FirebaseAuthentication>(
    () => FirebaseAuthenticationImpl(sl()),
  );
  sl.registerLazySingleton<Repository>(() => RepositoryImpl(sl()));

}
