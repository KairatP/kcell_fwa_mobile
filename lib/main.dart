import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kcell_fwa_mobile/pages/history/bloc/history_bloc.dart';
import 'package:kcell_fwa_mobile/pages/settings/bloc/settings_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/bloc/b2b_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/bloc/b2c_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/nw/bloc/network_bloc.dart';
import 'package:kcell_fwa_mobile/services/repository/auth_hive.dart';
import 'package:kcell_fwa_mobile/dependencies/injection_container.dart';
import 'package:kcell_fwa_mobile/pages/auth/bloc/auth_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tabBar/bloc/tabbar_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/bloc/ticket_list_bloc.dart';
import 'package:kcell_fwa_mobile/router/router.dart';
import 'package:kcell_fwa_mobile/router/routing_constant.dart';

void main() async {
  await initHive();
  await initGetIt();
  runApp(const MyApp());
}

Box tokensBox = Hive.box('tokens');
String? access = tokensBox.get('access');

String routeAuth = RoutingConst.auth;
String routeApproved = RoutingConst.tabBar;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TabBarBloc(),
        ),
        BlocProvider(
          create: (context) =>
              TicketListBloc(ticketsSql: getIt())..add(MyTicketListEvent()),
        ),
        BlocProvider(
          create: (context) => B2BBloc(ticketsSql: getIt()),
        ),
        BlocProvider(
          create: (context) => B2CBloc(ticketsSql: getIt()),
        ),
        BlocProvider(
          create: (context) => NWBloc(ticketsSql: getIt()),
        ),
        BlocProvider(
          create: (context) => AuthBloc()..add(MyAuthEvent()),
        ),
        BlocProvider(
          create: (context) => SettingsBloc()
        ),
        BlocProvider(
          create: (context) => HistoryBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: 
        // tokensBox.isEmpty ? routeAuth :
        routeApproved,
        onGenerateRoute: MetaRouter.onGenerateRoute,
        )
    );
  }
}
