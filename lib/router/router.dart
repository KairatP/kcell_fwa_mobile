import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/pages/auth/auth_error_screen.dart';
import 'package:kcell_fwa_mobile/pages/auth/auth_screen.dart';
import 'package:kcell_fwa_mobile/pages/history/history_screen.dart';
import 'package:kcell_fwa_mobile/pages/settings/settings_screen.dart';
import 'package:kcell_fwa_mobile/pages/tabBar/tabbar_screen.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_list_screen.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/b2b_screen.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/b2c_screen.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/nw/nw_screen.dart';

import 'routing_constant.dart';



class MetaRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutingConst.auth:
        return MaterialPageRoute(
          builder: (context) =>  const AuthScreen(),
          settings: routeSettings,
        );
      case RoutingConst.authError:
        return MaterialPageRoute(
          builder: (context) => const AuthErrorScreen(),
          settings: routeSettings,
        );
      case RoutingConst.tabBar:
        return MaterialPageRoute(
          builder: (context) => const TabBarScreen(),
          settings: routeSettings,
        );
      case RoutingConst.history:
        return MaterialPageRoute(
          builder: (context) => const HistoryScreen(),
          settings: routeSettings,
        );
      case RoutingConst.settings:
        return MaterialPageRoute(
          builder: (context) => const SettingsScreen(),
          settings: routeSettings,
        );
      case RoutingConst.tickets:
        return MaterialPageRoute(
          builder: (context) => const TicketListScreen(),
          settings: routeSettings,
        );
      case RoutingConst.b2bScreen:
        return MaterialPageRoute(
          builder: (context) => const B2BScreen(),
          settings: routeSettings,
        );
      case RoutingConst.b2cScreen:
        return MaterialPageRoute(
          builder: (context) => const B2CScreen(),
          settings: routeSettings,
        );
      case RoutingConst.nwScreen:
        return MaterialPageRoute(
          builder: (context) => const NWScreen(),
          settings: routeSettings,
        );
    }
    return null;
  }
}










