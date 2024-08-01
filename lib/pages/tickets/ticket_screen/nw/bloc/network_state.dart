part of 'network_bloc.dart';

abstract class NWState {}
 
class NWInitialState extends NWState {}
 
class NWLoadingState extends NWState {}
 
class NWLoadedState extends NWState {
  final NewTicketModel tiketsData;
  NWLoadedState({required this.tiketsData});
}