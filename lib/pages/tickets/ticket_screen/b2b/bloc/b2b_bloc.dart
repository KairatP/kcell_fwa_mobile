import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';
part 'b2b_event.dart';
part 'b2b_state.dart';

class B2BBloc extends Bloc<B2BEvent, B2BState> {
  final TicketsSqlInterface ticketsSql; // repository

  // Declare TextEditingControllers as class properties
  final TextEditingController rbsTextEditingController =
      TextEditingController();
  final TextEditingController sectorTextEditingController =
      TextEditingController();
  final TextEditingController customerComplainsOtheTextEditingController =
      TextEditingController();
  final TextEditingController afterWorkDataSpeedTextEditingController =
      TextEditingController();
  final TextEditingController fieldActionOtheTextEditingController =
      TextEditingController();
  final TextEditingController beforeActionDataSpeedTextEditingController =
      TextEditingController();
  final TextEditingController hourOfDataSpeedMesurmentController =
      TextEditingController();
  final TextEditingController dataSpeedBHController = TextEditingController();

  B2BBloc({required this.ticketsSql}) : super(B2BInitialState()) {
    on<MyB2BEvent>(_onMyB2BEvent);
    on<B2BSelectionEvent>(_onB2BSelectionEvent);
  }

  Future<void> _onMyB2BEvent(MyB2BEvent event, Emitter<B2BState> emit) async {
    emit(B2BLoadingState());

    // Update TextEditingController values
    rbsTextEditingController.text =
        event.tiketsData.nameRBS.isEmpty ? '' : event.tiketsData.nameRBS;
    sectorTextEditingController.text =
        event.tiketsData.sectorNmae.isEmpty ? '' : event.tiketsData.sectorNmae;
    customerComplainsOtheTextEditingController.text =
        event.tiketsData.customerRequestTypeOther.isEmpty
            ? ''
            : event.tiketsData.customerRequestTypeOther;
    afterWorkDataSpeedTextEditingController.text =
        event.tiketsData.dataSpeedMesurmenAfter.isEmpty
            ? ''
            : event.tiketsData.dataSpeedMesurmenAfter;
    fieldActionOtheTextEditingController.text =
        event.tiketsData.fieldWorkActionOther.isEmpty
            ? ''
            : event.tiketsData.fieldWorkActionOther;
    beforeActionDataSpeedTextEditingController.text =
        event.tiketsData.dataSpeedMesurmenBefore.isEmpty
            ? ''
            : event.tiketsData.dataSpeedMesurmenBefore;
    hourOfDataSpeedMesurmentController.text =
        event.tiketsData.buisyHours.isEmpty ? '' : event.tiketsData.buisyHours;
    dataSpeedBHController.text = event.tiketsData.buisyHoursDataSpeed.isEmpty
        ? ''
        : event.tiketsData.buisyHoursDataSpeed;

    emit(B2BLoadedState(
      tiketsData: event.tiketsData,
      rbsTextEditingController: rbsTextEditingController,
      sectorTextEditingController: sectorTextEditingController,
      customerComplainsOtheTextEditingController:
          customerComplainsOtheTextEditingController,
      afterWorkDataSpeedTextEditingController:
          afterWorkDataSpeedTextEditingController,
      fieldActionOtheTextEditingController:
          fieldActionOtheTextEditingController,
      beforeActionDataSpeedTextEditingController:
          beforeActionDataSpeedTextEditingController,
      hourOfDataSpeedMesurmentController: hourOfDataSpeedMesurmentController,
      dataSpeedBHController: dataSpeedBHController,
    ));
  }

  Future<void> _onB2BSelectionEvent(
      B2BSelectionEvent event, Emitter<B2BState> emit) async {
    final myNewData = NewTicketModel(
      id: event.ticketsData.id,
      ticketNumber: event.ticketsData.ticketNumber,
      ticketRecivedDate: event.ticketsData.ticketRecivedDate,
      ticketSetupDate: event.ticketsData.ticketSetupDate,
      ticketType: event.ticketsData.ticketType,
      serviceTypeKcell: event.ticketsData.serviceTypeKcell,
      regionName: event.ticketsData.regionName,
      subareaName: event.ticketsData.subareaName,
      oblastName: event.ticketsData.oblastName,
      cityName: event.ticketsData.cityName,
      streetName: event.ticketsData.streetName,
      houseId: event.ticketsData.houseId,
      streetCroseName: event.ticketsData.streetCroseName,
      fullAdress: event.ticketsData.fullAdress,
      phoneNumber: event.ticketsData.phoneNumber,
      customerName: event.ticketsData.customerName,
      lat: event.ticketsData.lat,
      long: event.ticketsData.long,
      description: event.ticketsData.description,
      creatorName: event.ticketsData.creatorName,
      networkType: event.selectionType == 'Тип сети'
          ? event.value
          : event.ticketsData.networkType,
      buisyHours: event.selectionType == 'ЧНН скорости (время события):'
          ? event.value
          : event.ticketsData.buisyHours,
      buisyHoursDataSpeed: event.selectionType == 'ЧНН скорости (Мб/сек):'
          ? event.value
          : event.ticketsData.buisyHoursDataSpeed,
      networkMesureTime:
          event.selectionType == 'Время замеров RSRQ, RSRP, RSSI, SINR'
              ? event.value
              : event.ticketsData.networkMesureTime,
      nameRBS: event.selectionType == 'ID сайта:'
          ? event.value
          : event.ticketsData.nameRBS,
      sectorNmae: event.selectionType == 'Сектор:'
          ? event.value
          : event.ticketsData.sectorNmae,
      radioProviderOwner: event.selectionType == 'Ведущий оператор'
          ? event.value
          : event.ticketsData.radioProviderOwner,
      dataSpeedMesurmenBefore: event.selectionType ==
              'Замеренная скорость до проделанных работ (Мб/сек):'
          ? event.value
          : event.ticketsData.dataSpeedMesurmenBefore,
      dataSpeedMesurmenAfter: event.selectionType ==
              'Замеренная скорость после проделанных работ (Мб/сек):'
          ? event.value
          : event.ticketsData.dataSpeedMesurmenAfter,
      testQualityValueBefore:
          event.selectionType == 'Качествo сигнала до проделанных работ'
              ? event.value
              : event.ticketsData.testQualityValueBefore,
      testQualityValueAfter:
          event.selectionType == 'Качествo сигнала после проделанных работ'
              ? event.value
              : event.ticketsData.testQualityValueAfter,
      customerRequestType: event.selectionType == 'Тип жалобы'
          ? event.value
          : event.ticketsData.customerRequestType,
      customerRequestTypeOther: event.selectionType == 'Тип жалобы Другое'
          ? event.value
          : event.ticketsData.customerRequestType == 'Другое'
              ? event.ticketsData.customerRequestTypeOther
              : '',
      fieldWorkAction: event.selectionType == 'Выполненые работы'
          ? event.value
          : event.ticketsData.fieldWorkAction,
      fieldWorkActionOther: event.selectionType == 'Выполненые работы Другое'
          ? event.value
          : event.ticketsData.fieldWorkAction == 'Другое'
              ? event.ticketsData.fieldWorkActionOther
              : '',
      beforeRSRQ: event.selectionType == 'before RSRQ'
          ? event.value
          : event.ticketsData.beforeRSRQ,
      beforeRSRP: event.selectionType == 'before RSRP'
          ? event.value
          : event.ticketsData.beforeRSRP,
      beforeRSSI: event.selectionType == 'before RSSI'
          ? event.value
          : event.ticketsData.beforeRSSI,
      beforeSINR: event.selectionType == 'before SINR'
          ? event.value
          : event.ticketsData.beforeSINR,
      afterRSRQ: event.selectionType == 'after RSRQ'
          ? event.value
          : event.ticketsData.afterRSRQ,
      afterRSRP: event.selectionType == 'after RSRP'
          ? event.value
          : event.ticketsData.afterRSRP,
      afterRSSI: event.selectionType == 'after RSSI'
          ? event.value
          : event.ticketsData.afterRSSI,
      afterSINR: event.selectionType == 'after SINR'
          ? event.value
          : event.ticketsData.afterSINR,
      beforeNetworkQuality:
          event.selectionType == 'Качествo сигнала до проделанных работ'
              ? event.value
              : event.ticketsData.beforeNetworkQuality,
      afterNetworkQuality:
          event.selectionType == 'Качествo сигнала после проделанных работ'
              ? event.value
              : event.ticketsData.afterNetworkQuality,
      comersialRecomendation: event.selectionType == 'Продать еще FWA?'
          ? event.value
          : event.ticketsData.comersialRecomendation,
      nwImprovmentRecomendation: event.selectionType == 'Что нужно для сети?'
          ? event.value
          : event.ticketsData.nwImprovmentRecomendation,
      complianceHistory: event.selectionType == 'Обращения абонента'
          ? event.value
          : event.ticketsData.complianceHistory,
    );
    await ticketsSql.updateNewTicketData(myNewData.id!, myNewData);
    final mySqlTicket =
        await ticketsSql.getNewTicketById(event.ticketsData.id!);

    emit(B2BLoadedState(
      tiketsData: mySqlTicket.first,
      rbsTextEditingController: rbsTextEditingController,
      sectorTextEditingController: sectorTextEditingController,
      customerComplainsOtheTextEditingController:
          customerComplainsOtheTextEditingController,
      afterWorkDataSpeedTextEditingController:
          afterWorkDataSpeedTextEditingController,
      fieldActionOtheTextEditingController:
          fieldActionOtheTextEditingController,
      beforeActionDataSpeedTextEditingController:
          beforeActionDataSpeedTextEditingController,
      hourOfDataSpeedMesurmentController: hourOfDataSpeedMesurmentController,
      dataSpeedBHController: dataSpeedBHController,
    ));
  }

  @override
  Future<void> close() {
    // Dispose controllers to avoid memory leaks
    rbsTextEditingController.dispose();
    sectorTextEditingController.dispose();
    customerComplainsOtheTextEditingController.dispose();
    afterWorkDataSpeedTextEditingController.dispose();
    fieldActionOtheTextEditingController.dispose();
    beforeActionDataSpeedTextEditingController.dispose();
    hourOfDataSpeedMesurmentController.dispose();
    dataSpeedBHController.dispose();
    return super.close();
  }
}
