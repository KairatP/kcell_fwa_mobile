part of 'ticket_list_bloc.dart';

abstract class TicketListEvent {}

class TicketListFilterEvent extends TicketListEvent {
  TicketListFilterEvent({required this.stateType});
  final String stateType;
}

class MyTicketListEvent extends TicketListEvent {
}
