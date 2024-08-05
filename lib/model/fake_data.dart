import 'dart:math';

import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';

List<NewTicketModel> generateFakeData(int count) {
  List<NewTicketModel> myFakeData = [];

  for (int i = 0; i < count; i++) {
    NewTicketModel answerModel = NewTicketModel(
      networkType: '4G',
      buisyHours: '18:00 - 20:00',
      buisyHoursDataSpeed: '50Mbps',
      networkMesureTime: '2024-07-21 10:00:00',
      nameRBS: 'RBS123',
      sectorNmae: 'SectorA',
      radioProviderOwner: '',
      dataSpeedMesurmenBefore: '45Mbps',
      dataSpeedMesurmenAfter: '55Mbps',
      testQualityValueBefore: 'Good',
      testQualityValueAfter: 'Excellent',
      customerRequestType: 'Coverage Issue',
      // customerComplainceType: 'Low Speed',
      // fieldEngineerComent: 'Issue resolved',
      fieldWorkAction: 'Optimized Network Settings',
      ticketNumber: '$i',
      ticketRecivedDate: DateTime.now().toString(),
      ticketType: i / 3 % 2 == 0
          ? 'NW'
          : i / 4 % 2 == 0
              ? 'B2B'
              : 'B2C',
      serviceTypeKcell: 'Internet',
      ticketSetupDate: '2024-07-20',
      regionName: 'Region${i % 10}',
      subareaName: 'Subarea${i % 5}',
      oblastName: 'Oblast${i % 3}',
      cityName: 'City${i % 7}',
      streetName: 'Street${i % 15}',
      houseId: 'House${i % 50}',
      streetCroseName: 'Cross Street${i % 8}',
      fullAdress: 'Full Address $i',
      phoneNumber: '123-456-7890',
      lat: '${Random().nextDouble() * 90}',
      long: '${Random().nextDouble() * 180}',
      description: 'Description for ticket $i',
      creatorName: 'Creator $i',
      customerName: 'Asd Name $i', 
      fieldWorkActionOther: '', 
      customerRequestTypeOther: '', 
      beforeRSRQ: '', 
      beforeRSRP: '', 
      beforeRSSI: '', 
      beforeSINR: '', 
      afterRSRQ: '', 
      afterRSRP: '', 
      afterRSSI: '', 
      afterSINR: '', 
      beforeNetworkQuality: '', 
      afterNetworkQuality: '', 
      comersialRecomendation: '', 
      nwImprovmentRecomendation: '', 
      complianceHistory: '',
    );
    myFakeData.add(answerModel);
  }
  return myFakeData;
}
