part of 'b2b_bloc.dart';

abstract class B2BEvent {}
 
class B2BSelectionEvent extends B2BEvent {
  B2BSelectionEvent(
      {required this.typeRequest,
      required this.selectedData,
      required this.ticketsData});
  final String typeRequest;
  final String selectedData;
  final NewTicketModel ticketsData;
}
 
class MyB2BEvent extends B2BEvent {
  final NewTicketModel tiketsData;
  MyB2BEvent({required this.tiketsData});
}
