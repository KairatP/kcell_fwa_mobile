import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
part 'b2c_event.dart';
part 'b2c_state.dart';

class B2CBloc extends Bloc<B2CEvent, B2CState> {
  B2CBloc() : super(B2CInitialState()) {
    on<MyB2CEvent>(_onMyB2CEvent);
    on<B2CSelectionEvent>(_onB2CSelectionEvent);
  }

  Future<void> _onMyB2CEvent(MyB2CEvent event, Emitter<B2CState> emit) async {
    emit(B2CLoadingState());
    emit(B2CLoadedState(tiketsData: event.tiketsData, networkType: '5G'));
  }

  Future<void> _onB2CSelectionEvent(
      B2CSelectionEvent event, Emitter<B2CState> emit) async {
    if (event.typeRequest == 'networkSelection') {
      emit(B2CLoadedState(
          tiketsData: event.ticketsData, networkType: event.selectedData));
    }
  }
}
