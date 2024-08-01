part of 'b2c_bloc.dart';

abstract class B2CEvent {}
 
class B2CSelectionEvent extends B2CEvent {
  B2CSelectionEvent(
      {required this.typeRequest,
      required this.selectedData,
      required this.ticketsData});
  final String typeRequest;
  final String selectedData;
  final NewTicketModel ticketsData;
}
 
class MyB2CEvent extends B2CEvent {
  final NewTicketModel tiketsData;
  MyB2CEvent({required this.tiketsData});
}
