part of 'network_bloc.dart';

abstract class NWEvent {}
 
class NWSelectionEvent extends NWEvent {
  NWSelectionEvent(
      {required this.typeRequest,
      required this.selectedData,
      required this.ticketsData});
  final String typeRequest;
  final String selectedData;
  final NewTicketModel ticketsData;
}
 
class MyNWEvent extends NWEvent {
  final NewTicketModel tiketsData;
  MyNWEvent({required this.tiketsData});
}
