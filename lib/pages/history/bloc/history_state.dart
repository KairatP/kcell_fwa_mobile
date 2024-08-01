part of 'history_bloc.dart';

abstract class HistoryState {}
 
class HistoryInitialState extends HistoryState {}
 
class HistoryLoadingState extends HistoryState {}
 
class HistoryLoadedState extends HistoryState {
  final List<NewTicketModel> historyData;
 
  HistoryLoadedState({required this.historyData});
}

class HistoryErrorState extends HistoryState {
  final String error;
 
  HistoryErrorState({required this.error});
}