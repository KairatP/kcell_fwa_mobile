import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';

part 'nw_event.dart';
part 'nw_state.dart';

class NWBloc extends Bloc<NWEvent, NWState> {
  NWBloc() : super(NWInitialState()) {
    on<MyNWEvent>(_onMyNWEvent);
    on<NWSelectionEvent>(_onNWSelectionEvent);
  }

  Future<void> _onMyNWEvent(MyNWEvent event, Emitter<NWState> emit) async {
    emit(NWLoadingState());
    emit(NWLoadedState(tiketsData: event.tiketsData, networkType: '5G'));
  }

  Future<void> _onNWSelectionEvent(
      NWSelectionEvent event, Emitter<NWState> emit) async {
    if (event.typeRequest == 'networkSelection') {
      emit(NWLoadedState(
          tiketsData: event.ticketsData, networkType: event.selectedData));
    }
  }
}
