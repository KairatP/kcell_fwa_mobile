import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/ticket_model.dart';
import 'package:kcell_fwa_mobile/pages/tickets/bloc/ticket_list_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/bloc/ticket_cell_bloc.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/router/routing_constant.dart';

class TicketListScreen extends StatelessWidget {
  const TicketListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketListBloc, TicketListState>(
        builder: (context, state) {
      if (state is TicketListLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is TicketListLoadedState) {
        return 
        Scaffold(
            body: 
            ListView.separated(
          itemCount: state.tiketsData.length,
          itemBuilder: (context, index) {
            return TicketsListWidget(ticketData: state.tiketsData[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const MyDivider();
          },
        )
        );
      }
      return const Center(
        child: Text("Somthing wrong ..."),
      );
    });
  }
}

class TicketsListWidget extends StatelessWidget {
  const TicketsListWidget({super.key, required this.ticketData});
  final TicketModel ticketData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _ticketCellAction(context, ticketData),
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.grey,
                  width: 150,
                  height: 30,
                  child: const Text('Номер заявки:'),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.white24,
                  // width: 261,
                  height: 30,
                  child: Text(ticketData.ticketNumber.toString()),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.grey,
                  width: 150,
                  height: 30,
                  child: const Text('Тип билета:'),
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    color: Colors.white24,
                    // width: 261,
                    height: 30,
                    child: Text(overflow: TextOverflow.ellipsis, ticketData.ticketType),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  _ticketCellAction(BuildContext context, TicketModel ticketData) {
    final myTiketCellBloc = BlocProvider.of<TicketCellBloc>(context);
        myTiketCellBloc.add(MyTicketCellEvent(tiketsData: ticketData));
    Navigator.pushNamed(
      context,
      RoutingConst.ticketCell,
    );
  }
}
