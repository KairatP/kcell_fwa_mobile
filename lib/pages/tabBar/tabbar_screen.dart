import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/bloc/ticket_list_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_list_screen.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: const TabBarView(
          children: <Widget>[
            TicketListScreen(),
            Center(
              child: Text("History of tickets"),
            ),
            Center(
              child: Text("Settings"),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
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
        break;
    }
  }
}
