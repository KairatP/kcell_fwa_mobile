import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';

part 'network_event.dart';
part 'network_state.dart';

class NWBloc extends Bloc<NWEvent, NWState> {
  final TicketsSqlInterface ticketsSql; // repository
  NWBloc({required this.ticketsSql}) : super(NWInitialState()) {
    on<MyNWEvent>(_onMyNWEvent);
    on<NWSelectionEvent>(_onNWSelectionEvent);
  }

  Future<void> _onMyNWEvent(MyNWEvent event, Emitter<NWState> emit) async {
    emit(NWLoadingState());
    emit(NWLoadedState(tiketsData: event.tiketsData));
  }

  Future<void> _onNWSelectionEvent(
      NWSelectionEvent event, Emitter<NWState> emit) async {
    if (event.typeRequest == 'networkSelection') {
      emit(NWLoadedState(
          tiketsData: event.ticketsData));
    }
  }
}
