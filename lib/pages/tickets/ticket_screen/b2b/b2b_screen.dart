import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/tickets/bloc/ticket_list_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/checklist/checklist_customer_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/checklist/checklist_office_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/checklist/close_ticket_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/checklist/measurements_before_work_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/tickes/customer_address_b2b.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2b/tickes/ticket_b2b.dart';

import 'bloc/b2b_bloc.dart';

class B2BScreen extends StatelessWidget {
  const B2BScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B2BBloc, B2BState>(builder: (context, state) {
      if (state is B2BInitialState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is B2BLoadingState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is B2BLoadedState) {
        return DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => backNavigationAction(context),
              ),
              title: Text(
                state.tiketsData.ticketType.length > 3
                    ? state.tiketsData.ticketType.substring(0, 3)
                    : state.tiketsData.ticketType,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
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
                    text: 'Чеклист офис',
                  ),
                  Tab(
                    text: 'Замеры до проделанных работ',
                  ),
                  Tab(
                    text: 'Чеклист абонент',
                  ),
                  Tab(
                    text: 'Закрыть билет',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                // ticket
                TicketB2B(ticketData: state.tiketsData),
                // customer address
                CustomerAddressB2B(ticketData: state.tiketsData),

                // checklist office
                ChecklistOfficeB2B(
                    ticketData: state.tiketsData,
                    selectionAction: (valu , selectionType ) => b2bSelectionAction(context, valu, selectionType, state.tiketsData), 
                    hourOfDataSpeedMesurmentController: state.hourOfDataSpeedMesurmentController, 
                    dataSpeedBHController: state.dataSpeedBHController,
                ),

                // measurements before work
                MeasurementsBeforeWorkB2B(
                    ticketData: state.tiketsData,
                    selectionAction: (valu , selectionType ) => b2bSelectionAction(context, valu, selectionType, state.tiketsData),
                    beforeActionDataSpeedTextEditingController: state.beforeActionDataSpeedTextEditingController, 
                  ),

                // checklist customer
                ChecklistCustomerB2B(
                  ticketData: state.tiketsData,
                  customerChecklistSelectionAction: (valu , selectionType ) => b2bSelectionAction(context, valu, selectionType, state.tiketsData), 
                  rbsTextEditingController: state.rbsTextEditingController, 
                  sectorTextEditingController: state.sectorTextEditingController, 
                  customerComplainsOtheTextEditingController: state.customerComplainsOtheTextEditingController, 
                  afterWorkDataSpeedTextEditingController: state.afterWorkDataSpeedTextEditingController, 
                  fieldActionOtheTextEditingController: state.fieldActionOtheTextEditingController,
                ),

                CloseTheTicketB2B(myData: state.tiketsData,),
              ],
            ),
          ),
        );
      }
      return const Center(child: Text("Something wrong ..."));
    });
  }

  b2bSelectionAction(BuildContext context, String value,
      String selectionType, NewTicketModel data) {
    final myTiketCellBloc = BlocProvider.of<B2BBloc>(context);

    myTiketCellBloc.add(B2BSelectionEvent(
        selectionType: selectionType, value: value, ticketsData: data));
  }
  
  backNavigationAction(BuildContext context) {
    final myTiketListBloc = BlocProvider.of<TicketListBloc>(context);
        myTiketListBloc.add(MyTicketListEvent());
    Navigator.pop(context);
  }
}
