import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';
part 'b2c_event.dart';
part 'b2c_state.dart';

class B2CBloc extends Bloc<B2CEvent, B2CState> {
  final TicketsSqlInterface ticketsSql; // repository
  B2CBloc({required this.ticketsSql}) : super(B2CInitialState()) {
    on<MyB2CEvent>(_onMyB2CEvent);
    on<B2CSelectionEvent>(_onB2CSelectionEvent);
  }

  Future<void> _onMyB2CEvent(MyB2CEvent event, Emitter<B2CState> emit) async {
    emit(B2CLoadingState());
    emit(B2CLoadedState(tiketsData: event.tiketsData, networkType: '5G'));
  }

  Future<void> _onB2CSelectionEvent(
      B2CSelectionEvent event, Emitter<B2CState> emit) async {
    if (event.selectionType == 'networkSelection') {
      emit(B2CLoadedState(
          tiketsData: event.ticketsData, networkType: event.selectedData));
    }
  }

  // final TextEditingController rbsTextEditingController; 
  // final TextEditingController sectorTextEditingController;
  // final TextEditingController customerComplainsOtheTextEditingController;
  // final TextEditingController dataSpeedTextEditingController;
  // final TextEditingController fieldActionOtheTextEditingController;
  // final TextEditingController beforeActionDataSpeedTextEditingController;
  // final TextEditingController bHourDataSpeedController;
  // final TextEditingController dataSpeedBHController;

}
