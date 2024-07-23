import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/ticket_model.dart';
part 'ticket_cell_event.dart';
part 'ticket_cell_state.dart';

class TicketCellBloc extends Bloc<TicketCellEvent, TicketCellState> {
  TicketCellBloc() : super(TicketCellInitialState()) {
    on<MyTicketCellEvent>(_onMyTicketCellEvent);
  }

  Future<void> _onMyTicketCellEvent(
    MyTicketCellEvent event,
    Emitter<TicketCellState> emit,
  ) async {
    emit(TicketCellLoadingState());
    emit(TicketCellLoadedState(tiketsData: event.tiketsData));
  }
}

