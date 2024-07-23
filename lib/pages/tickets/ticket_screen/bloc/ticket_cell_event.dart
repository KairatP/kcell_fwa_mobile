part of 'ticket_cell_bloc.dart';

abstract class TicketCellEvent {}

class TicketCellFilterEvent extends TicketCellEvent {
  TicketCellFilterEvent({required this.stateType});
  final String stateType;
}

class MyTicketCellEvent extends TicketCellEvent {
  final TicketModel tiketsData;
  MyTicketCellEvent({required this.tiketsData});
}
