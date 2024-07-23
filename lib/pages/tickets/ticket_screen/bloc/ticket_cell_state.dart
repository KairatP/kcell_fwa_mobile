part of 'ticket_cell_bloc.dart';

abstract class TicketCellState {}

class TicketCellInitialState extends TicketCellState {}

class TicketCellLoadingState extends TicketCellState {}

class TicketCellLoadedState extends TicketCellState {
  final TicketModel tiketsData;
  TicketCellLoadedState({required this.tiketsData});
}