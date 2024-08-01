part of 'b2c_bloc.dart';

abstract class B2CState {}
 
class B2CInitialState extends B2CState {}
 
class B2CLoadingState extends B2CState {}
 
class B2CLoadedState extends B2CState {
  final NewTicketModel tiketsData;
  final String networkType;
  B2CLoadedState({required this.tiketsData, required this.networkType});
}