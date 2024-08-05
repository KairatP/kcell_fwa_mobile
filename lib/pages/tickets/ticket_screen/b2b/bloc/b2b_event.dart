part of 'b2b_bloc.dart';

abstract class B2BEvent {}
 
class B2BSelectionEvent extends B2BEvent {
  B2BSelectionEvent(
      {required this.selectionType,
      required this.value,
      required this.ticketsData});
  final String selectionType;
  final String value;
  final NewTicketModel ticketsData;
}
 
class MyB2BEvent extends B2BEvent {
  final NewTicketModel tiketsData;
  MyB2BEvent({required this.tiketsData});
}
