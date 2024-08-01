import 'package:get_it/get_it.dart';
import 'package:kcell_fwa_mobile/dependencies/auth_dio.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';

GetIt getIt = GetIt.I;

initGetIt() {
  getIt.registerLazySingleton<AuthDio>(
    () => AuthDio(),
  );

  getIt.registerLazySingleton<TicketsSqlInterface>(
    () => TicketsSQL(),
  );
}
