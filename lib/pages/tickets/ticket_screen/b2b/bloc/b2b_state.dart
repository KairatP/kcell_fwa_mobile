part of 'b2b_bloc.dart';

abstract class B2BState {}
 
class B2BInitialState extends B2BState {}
 
class B2BLoadingState extends B2BState {}
 
class B2BLoadedState extends B2BState {
  final NewTicketModel tiketsData;
  final String networkType;
  B2BLoadedState({required this.tiketsData, required this.networkType});
}