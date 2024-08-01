import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';
part 'b2b_event.dart';
part 'b2b_state.dart';

class B2BBloc extends Bloc<B2BEvent, B2BState> {
  final TicketsSqlInterface ticketsSql; // repository
  B2BBloc({required this.ticketsSql}) : super(B2BInitialState()) {
    on<MyB2BEvent>(_onMyB2BEvent);
    on<B2BSelectionEvent>(_onB2BSelectionEvent);
  }
 
  Future<void> _onMyB2BEvent(
      MyB2BEvent event, 
      Emitter<B2BState> emit
    ) async {
      emit(B2BLoadingState());
      emit(B2BLoadedState(
          tiketsData: event.tiketsData, networkType: '5G'));
  }
 
  Future<void> _onB2BSelectionEvent(
      B2BSelectionEvent event, Emitter<B2BState> emit) async {
    if (event.typeRequest == 'networkSelection') {
      emit(B2BLoadedState(
          tiketsData: event.ticketsData, networkType: event.selectedData));
    }
  }
}

