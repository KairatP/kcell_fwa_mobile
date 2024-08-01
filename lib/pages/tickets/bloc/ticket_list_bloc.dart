import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/model/fake_data.dart';
part 'ticket_list_event.dart';
part 'ticket_list_state.dart';

class TicketListBloc extends Bloc<TicketListEvent, TicketListState> {
  TicketListBloc() : super(TicketListInitialState()) {
    on<MyTicketListEvent>(_onMyTicketListEvent);
  }

  Future<void> _onMyTicketListEvent(
    MyTicketListEvent event,
    Emitter<TicketListState> emit,
  ) async {
    emit(TicketListLoadingState());
    List<NewTicketModel> myFakeData = generateFakeData(10);
    emit(TicketListLoadedState(tiketsData: myFakeData));

  }
}

