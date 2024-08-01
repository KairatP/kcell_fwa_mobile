part of 'ticket_list_bloc.dart';

abstract class TicketListState {}

class TicketListInitialState extends TicketListState {}

class TicketListLoadingState extends TicketListState {}

class TicketListLoadedState extends TicketListState {
  final List<NewTicketModel> tiketsData;
  TicketListLoadedState({required this.tiketsData});
}

class TicketListErrorState extends TicketListState {
  final String error;
  TicketListErrorState({required this.error});
}