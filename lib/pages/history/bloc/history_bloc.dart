import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/fake_data.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';

part 'history_state.dart'; 
part 'history_event.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitialState()) {
    on<MyHistoryEvent>(_onMyHistoryEvent);
    on<HistorySelectionEvent>(_onHistorySelectionEvent);
  }
 
  Future<void> _onMyHistoryEvent(
    MyHistoryEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(HistoryLoadingState());
    final myHistoryData = generateFakeData(10000);
    emit(HistoryLoadedState(historyData: myHistoryData));
  }
 
  Future<void> _onHistorySelectionEvent(
      HistorySelectionEvent event, Emitter<HistoryState> emit) async {
    final myHistoryData = generateFakeData(100);
    emit(HistoryLoadedState(historyData: myHistoryData));
  }
}