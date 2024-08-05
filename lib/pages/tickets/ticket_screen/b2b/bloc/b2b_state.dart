part of 'b2b_bloc.dart';

abstract class B2BState {}
 
class B2BInitialState extends B2BState {}
 
class B2BLoadingState extends B2BState {}
 
class B2BLoadedState extends B2BState {
  B2BLoadedState({
    required this.tiketsData,
    required this.rbsTextEditingController,
    required this.hourOfDataSpeedMesurmentController,
    required this.sectorTextEditingController, 
    required this.customerComplainsOtheTextEditingController, 
    required this.afterWorkDataSpeedTextEditingController, 
    required this.fieldActionOtheTextEditingController, 
    required this.beforeActionDataSpeedTextEditingController, 
    required this.dataSpeedBHController,
  });
  final NewTicketModel tiketsData;
  final TextEditingController rbsTextEditingController; 
  final TextEditingController sectorTextEditingController;
  final TextEditingController customerComplainsOtheTextEditingController;
  final TextEditingController afterWorkDataSpeedTextEditingController;
  final TextEditingController fieldActionOtheTextEditingController;
  final TextEditingController beforeActionDataSpeedTextEditingController;
  final TextEditingController hourOfDataSpeedMesurmentController;
  final TextEditingController dataSpeedBHController;
}