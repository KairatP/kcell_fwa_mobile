import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/bloc/ticket_cell_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/checklist/checlist_b2c.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/tickes/ticket_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/tickes/ticket_b2c.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/tickes/ticket_nw.dart';

 
class TicketsCell extends StatelessWidget {
  const TicketsCell({super.key});
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCellBloc, TicketCellState>(
      builder: (context, state) {
        if (state is TicketCellInitialState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TicketCellLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TicketCellLoadedState) {
          return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text(state.tiketsData.ticketType),
              centerTitle: true,
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Информация о билете',
                  ),
                  Tab(
                    text: 'Checklist',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                state.tiketsData.ticketType == 'B2B' ? 
                TicketB2B(ticketData: state.tiketsData) : 
                state.tiketsData.ticketType == 'B2C' ?
                TicketB2C(ticketData: state.tiketsData) : 
                TicketNW(ticketData: state.tiketsData),

                /// checklist part
                ChecklistB2C(), 
              ],
            ),
          ),
        );
        }
        return const Center(child: Text("Somthing wrong ..."));
      }
    );
  }
}
 




