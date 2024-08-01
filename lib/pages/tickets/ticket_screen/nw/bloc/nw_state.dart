part of 'nw_bloc.dart';

abstract class NWState {}
 
class NWInitialState extends NWState {}
 
class NWLoadingState extends NWState {}
 
class NWLoadedState extends NWState {
  final NewTicketModel tiketsData;
  final String networkType;
  NWLoadedState({required this.tiketsData, required this.networkType});
}