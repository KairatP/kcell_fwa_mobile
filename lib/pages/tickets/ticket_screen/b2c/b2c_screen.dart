import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/bloc/b2c_bloc.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/checklist/checklist_customer_b2c.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/checklist/measurements_before_work_b2c.dart';
import 'package:kcell_fwa_mobile/pages/tickets/ticket_screen/b2c/tickes/ticket_b2c.dart';
import 'checklist/checklist_office_b2c.dart';
import 'checklist/close_ticket_b2c.dart';
import 'tickes/customer_address_b2c.dart';
 

class B2CScreen extends StatelessWidget {
  const B2CScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B2CBloc, B2CState>(
        builder: (context, state) {
      if (state is B2CInitialState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is B2CLoadingState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is B2CLoadedState) {
        return DefaultTabController(
          length: 6,
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
                TicketB2C(ticketData: state.tiketsData),

                // Address tab view
                CustomerAddressB2C(ticketData: state.tiketsData),

                /// checklist office
                ChecklistOfficeB2C( 
                  ticketData: state.tiketsData,
                  selectionAction: (value, selectionType) => b2cSelectionAction(
                    context, value,
                    selectionType, 
                    state.tiketsData
                  ), 
                  bHourDataSpeedController: TextEditingController(), 
                  dataSpeedBHController: TextEditingController(),
                ),

                // measurements before work
                MeasurementsBeforeWorkB2C( ticketData: state.tiketsData,
                  selectionAction: (value, selectionType) =>
                      b2cSelectionAction(context, value,
                          'networkSelection', state.tiketsData),
                  beforeActionDataSpeedTextEditingController: TextEditingController(),),

                // checklist customer
                ChecklistCustomerB2C( ticketData: state.tiketsData,
                  customerChecklistSelectionAction: (value, selectionType) =>
                      b2cSelectionAction(context, value,
                          'networkSelection', state.tiketsData),
                  rbsTextEditingController: TextEditingController(), sectorTextEditingController: TextEditingController(), customerComplainsOtheTextEditingController: TextEditingController(), dataSpeedTextEditingController: TextEditingController(), fieldActionOtheTextEditingController: TextEditingController(),),

                const CloseTheTicketB2C(),
              ],
            ),
          ),
        );
      }
      return const Center(child: Text("Something wrong ..."));
    });
  }
  b2cSelectionAction(BuildContext context, String value,
      String selectionType, NewTicketModel data) {
    final myTiketCellBloc = BlocProvider.of<B2CBloc>(context);

    myTiketCellBloc.add(B2CSelectionEvent(
      selectionType: selectionType, selectedData: value, ticketsData: data));
  }

}

 
