import 'package:get_it/get_it.dart';
import 'package:kcell_fwa_mobile/dependencies/auth_dio.dart';

GetIt getIt = GetIt.I;

initGetIt() {
  getIt.registerLazySingleton<AuthDio>(
    () => AuthDio(),
  );
}
