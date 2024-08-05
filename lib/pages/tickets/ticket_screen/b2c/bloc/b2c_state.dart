part of 'b2c_bloc.dart';

abstract class B2CState {}
 
class B2CInitialState extends B2CState {}
 
class B2CLoadingState extends B2CState {}
 
class B2CLoadedState extends B2CState {
  B2CLoadedState( {
    required this.tiketsData, 
    required this.networkType,
    // required this.rbsTextEditingController,
    // required this.bHourDataSpeedController,
    // required this.sectorTextEditingController, 
    // required this.customerComplainsOtheTextEditingController, 
    // required this.dataSpeedTextEditingController, 
    // required this.fieldActionOtheTextEditingController, 
    // required this.beforeActionDataSpeedTextEditingController, 
    // required this.dataSpeedBHController,
  });
  final NewTicketModel tiketsData;
  final String networkType;
  // final TextEditingController rbsTextEditingController; 
  // final TextEditingController sectorTextEditingController;
  // final TextEditingController customerComplainsOtheTextEditingController;
  // final TextEditingController dataSpeedTextEditingController;
  // final TextEditingController fieldActionOtheTextEditingController;
  // final TextEditingController beforeActionDataSpeedTextEditingController;
  // final TextEditingController bHourDataSpeedController;
  // final TextEditingController dataSpeedBHController;
}