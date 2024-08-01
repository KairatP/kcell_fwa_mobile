import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/model/fake_data.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';
part 'ticket_list_event.dart';
part 'ticket_list_state.dart';

class TicketListBloc extends Bloc<TicketListEvent, TicketListState> {
  final TicketsSqlInterface ticketsSql; // repository
  TicketListBloc({required this.ticketsSql}) : super(TicketListInitialState()) {
    on<MyTicketListEvent>(_onMyTicketListEvent);
  }

  Future<void> _onMyTicketListEvent(
    MyTicketListEvent event,
    Emitter<TicketListState> emit,
  ) async {
    emit(TicketListLoadingState());
    try {
      final ticketsData = await ticketsSql.getAllNewTicketData();

      if (ticketsData.isEmpty) {
        List<NewTicketModel> myFakeData = generateFakeData(17);
        for (var i in myFakeData) {
          await ticketsSql.addNewTicketData(i);
        }

        final ticketsDataInitial = await ticketsSql.getAllNewTicketData();

        emit(TicketListLoadedState(tiketsData: ticketsDataInitial));
      } else {
        emit(TicketListLoadedState(tiketsData: ticketsData));
      }
    } catch (e) {
      emit(TicketListErrorState(error: e.toString()));
    }
  }
}
