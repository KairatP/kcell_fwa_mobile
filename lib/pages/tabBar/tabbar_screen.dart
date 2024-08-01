import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/pages/settings/bloc/settings_bloc.dart';
import 'package:kcell_fwa_mobile/pages/settings/settings_screen.dart';
import 'package:kcell_fwa_mobile/pages/tickets/bloc/ticket_list_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_list_screen.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(
          children: <Widget>[
            TicketListScreen(),
            Center(
              child: Text("History of tickets"),
            ),
            SettingsScreen()
          ],
        ),
        bottomNavigationBar: TabBar(
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          splashBorderRadius: BorderRadius.zero,
          unselectedLabelColor: const Color.fromARGB(255, 190, 190, 190),
          onTap: (value) => _tabAction(context, value),
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.history),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }

  _tabAction(BuildContext context, int value) {
    switch (value) {
      case 0:
        final myTiketListBloc = BlocProvider.of<TicketListBloc>(context);
        myTiketListBloc.add(MyTicketListEvent());
      case 1:
        break;
      case 2:
        final myTiketListBloc = BlocProvider.of<SettingsBloc>(context);
        myTiketListBloc.add(LoadSettingsEvent());
    }
  }
}
