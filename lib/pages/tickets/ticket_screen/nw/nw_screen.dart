import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/nw/bloc/network_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/nw/tickes/status_nw.dart';

import 'checklist/checklist_nw.dart';
import 'checklist/close_nw.dart';
import 'tickes/address_nw.dart';

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
          length: 4,
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
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                    icon: const Icon(Icons.save_rounded),
                    tooltip: 'Сохранить изменения',
                    onPressed: () {
                      print("save click");
                    }
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
                    text: 'Адрес обследования',
                  ),
                  Tab(
                    text: 'Чеклист',
                  ),
                  Tab(
                    text: 'Закрыть билет',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                NWStatusNW(ticketData: state.tiketsData),
                AddressNW(ticketData: state.tiketsData),
                ChecklistNW(ticketData: state.tiketsData, networkSelectionAction: (value ) => b2cNetworkSelectionAction(context, value, 'networkSelection', state.tiketsData), faltActionType: state.tiketsData.fieldWorkAction,),
                const CloseNW(),
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

 
