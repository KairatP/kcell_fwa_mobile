import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/tickets/bloc/ticket_list_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/bloc/b2b_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/bloc/b2c_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/nw/bloc/network_bloc.dart';
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
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.purple,
              title: const Text('Список билетов',
                  style: TextStyle(color: Colors.white)),
            ),
            body: ListView.separated(
              itemCount: state.tiketsData.length,
              itemBuilder: (context, index) {
                return TicketsListWidget(ticketData: state.tiketsData[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const MyDivider();
              },
            ));
      }
      if (state is TicketListErrorState) {
        return Center(
          child: Text('''Somthing wrong ...
              ${state.error}'''),
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
  final NewTicketModel ticketData;

  @override
  Widget build(BuildContext context) {
    final widthRight = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => _ticketCellAction(context, ticketData),
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(5),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ticketData.ticketType == 'B2C'
                        ? const Color.fromARGB(255, 243, 151, 151)
                        : ticketData.ticketType == 'B2B'
                            ? const Color.fromARGB(255, 131, 178, 228)
                            : Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 125, 124, 124),
                      width: 0.7,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      ticketData.ticketType.length > 3
                          ? ticketData.ticketType.substring(0, 3)
                          : ticketData.ticketType,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: widthRight - 70,
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        color: Colors.white24,
                        height: 30,
                        child: Text(
                          ticketData.ticketNumber,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        color: Colors.white24,
                        height: 30,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          ticketData.ticketRecivedDate.length > 19
                              ? ticketData.ticketRecivedDate.substring(0, 19)
                              : ticketData.ticketRecivedDate,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 92, 92, 92)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ])
              ],
            ),
          ],
        ),
      ),
    );
  }

  _ticketCellAction(BuildContext context, NewTicketModel ticketData) {
    if (ticketData.ticketType == 'B2C') {
      final myB2CBloc = BlocProvider.of<B2CBloc>(context);
      myB2CBloc.add(MyB2CEvent(tiketsData: ticketData));
      Navigator.pushNamed(
        context,
        RoutingConst.b2bScreen,
      );
    } else if (ticketData.ticketType == 'B2B') {
      final myB2BBloc = BlocProvider.of<B2BBloc>(context);
      myB2BBloc.add(MyB2BEvent(tiketsData: ticketData));
      Navigator.pushNamed(
        context,
        RoutingConst.b2bScreen,
      );
    } else if (ticketData.ticketType == 'NW') {
      final myNWBloc = BlocProvider.of<NWBloc>(context);
      myNWBloc.add(MyNWEvent(tiketsData: ticketData));
      Navigator.pushNamed(
        context,
        RoutingConst.nwScreen,
      );
    }
  }
}
