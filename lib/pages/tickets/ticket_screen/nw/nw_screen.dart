import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/checklist/checklist_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/checklist/checlist_b2c.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/tickes/ticket_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/tickes/ticket_b2c.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/tickes/ticket_nw.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/nw/bloc/nw_bloc.dart';

import 'checklist/checklist_busyhour.dart';
import 'checklist/checklist_nw.dart';
import 'checklist/close_ticket.dart';
import 'tickes/address_nw.dart';
import 'tickes/customer_address_b2b.dart';
import 'tickes/customer_address_b2c.dart';
 

class NWScreen extends StatelessWidget {
  const NWScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NWBloc, NWState>(
        builder: (context, state) {
      if (state is NWInitialState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is NWLoadingState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is NWLoadedState) {
        return DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                state.tiketsData.ticketType.length > 3 ? state.tiketsData.ticketType.substring(0, 3) : state.tiketsData.ticketType,
                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    icon: const Icon(Icons.save_rounded),
                    tooltip: 'Сохранить изменения',
                    onPressed: () {}
                ),
              ],
              bottom: TabBar(
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                splashBorderRadius: BorderRadius.zero,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: const Color.fromARGB(255, 88, 25, 99),
                unselectedLabelColor: const Color.fromARGB(255, 149, 149, 149),
                tabs: const <Widget>[
                  Tab(
                    text: 'Информация о билете',
                  ),
                  Tab(
                    text: 'Адрес абонента',
                  ),
                  Tab(
                    text: 'Checklist',
                  ),
                  Tab(
                    text: 'Checklist по ЧНН',
                  ),
                  Tab(
                    text: 'Закрыть билет',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                state.tiketsData.ticketType == 'B2B'
                    ? TicketB2B(ticketData: state.tiketsData)
                    : state.tiketsData.ticketType == 'B2C'
                        ? TicketB2C(ticketData: state.tiketsData)
                        : TicketNW(ticketData: state.tiketsData),
                // Address tab view
                state.tiketsData.ticketType == 'B2B'
                    ? CustomerAddressB2B(ticketData: state.tiketsData)
                    : state.tiketsData.ticketType == 'B2C'
                        ? CustomerAddressB2C(ticketData: state.tiketsData)
                        : AddressNW(ticketData: state.tiketsData),
                /// checklist part
                state.tiketsData.ticketType == 'B2B'
                    ? ChecklistB2B(ticketData: state.tiketsData, networkSelectionAction: (value) => b2cNetworkSelectionAction(context, value, 'networkSelection', state.tiketsData), faltActionType: state.networkType,)
                    : state.tiketsData.ticketType == 'B2C'
                        ? ChecklistB2C(
                            ticketData: state.tiketsData,
                            networkSelectionAction: (value) =>
                                b2cNetworkSelectionAction(context, value,
                                    'networkSelection', state.tiketsData),
                            faltActionType: state.networkType,
                          )
                        : ChecklistNW(ticketData: state.tiketsData, networkSelectionAction: (value ) => b2cNetworkSelectionAction(context, value, 'networkSelection', state.tiketsData), faltActionType: state.networkType,),
                const ChecklistBusyHour(),
                const CloseTheTicket(),
              ],
            ),
          ),
        );
      }
      return const Center(child: Text("Something wrong ..."));
    });
  }
  b2cNetworkSelectionAction(BuildContext context, String value,
    String typeRequest, NewTicketModel data) {
    final myTiketCellBloc = BlocProvider.of<NWBloc>(context);

    myTiketCellBloc.add(NWSelectionEvent(
      typeRequest: typeRequest, selectedData: value, ticketsData: data));
  }

}

 
