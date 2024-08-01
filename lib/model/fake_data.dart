import 'dart:math';

import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
// class TicketModel {
//   final String ticketNumber;
//   final String ticketRecivedDate;
//   final String ticketType;
//   final String serviceTypeKcell;
//   final String ticketDateSetupDate;
//   final String regionName;
//   final String subareaName;
//   final String oblastName;
//   final String cityName;
//   final String streetName;
//   final String houseId;
//   final String streetCroseName;
//   final String fullAdress;
//   final String phoneNumber;
//   final String customerName;
//   final String lat;
//   final String long;
//   final String description;
//   final String creatorName;
//   final AnswerModel answereFromFiewld;

//   TicketModel({
//     required this.ticketNumber,
//     required this.ticketRecivedDate,
//     required this.ticketType,
//     required this.serviceTypeKcell,
//     required this.ticketDateSetupDate,
//     required this.regionName,
//     required this.subareaName,
//     required this.oblastName,
//     required this.cityName,
//     required this.streetName,
//     required this.houseId,
//     required this.streetCroseName,
//     required this.fullAdress,
//     required this.phoneNumber,
//     required this.customerName,
//     required this.lat,
//     required this.long,
//     required this.description,
//     required this.creatorName,
//     required this.answereFromFiewld,
//   });

//   factory TicketModel.fromJson(Map<String, dynamic> json) {
//     return TicketModel(
//       ticketNumber: json['ticketNumber'],
//       ticketRecivedDate: json['ticketRecivedDate'],
//       ticketType: json['ticketType'],
//       serviceTypeKcell: json['serviceTypeKcell'],
//       ticketDateSetupDate: json['ticketDateSetupDate'],
//       regionName: json['regionName'],
//       subareaName: json['subareaName'],
//       oblastName: json['oblastName'],
//       cityName: json['cityName'],
//       streetName: json['streetName'],
//       houseId: json['houseId'],
//       streetCroseName: json['streetCroseName'],
//       fullAdress: json['fullAdress'],
//       phoneNumber: json['phoneNumber'],
//       customerName: json['customerName'],
//       lat: json['lat'],
//       long: json['long'],
//       description: json['description'],
//       creatorName: json['creatorName'],
//       answereFromFiewld: AnswerModel.fromJson(json['answereFromFiewld']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'ticketNumber': ticketNumber,
//       'ticketRecivedDate': ticketRecivedDate,
//       'ticketType': ticketType,
//       'serviceTypeKcell': serviceTypeKcell,
//       'ticketDateSetupDate': ticketDateSetupDate,
//       'regionName': regionName,
//       'subareaName': subareaName,
//       'oblastName': oblastName,
//       'cityName': cityName,
//       'streetName': streetName,
//       'houseId': houseId,
//       'streetCroseName': streetCroseName,
//       'fullAdress': fullAdress,
//       'phoneNumber': phoneNumber,
//       'customerName': customerName,
//       'lat': lat,
//       'long': long,
//       'description': description,
//       'creatorName': creatorName,
//       'answereFromFiewld': answereFromFiewld.toJson(),
//     };
//   }
// }

// class AnswerModel {
//   final String networkType;
//   final String rSRQ;
//   final String rSRP;
//   final String rSSI;
//   final String sINR;
//   final String buisyHours;
//   final String buisyHoursDataSpeed;
//   final String networkMesureTime;
//   final String nameRBS;
//   final String sectorNmae;
//   final String radioProviderOwner;
//   final String dataSpeedMesurmenBefore;
//   final String dataSpeedMesurmenAfter;
//   final String testQualityValueBefore;
//   final String testQualityValueAfter;
//   final String customerRequestType;
//   final String customerComplainceType;
//   final String fieldEngineerComent;
//   final String fieldWorkAction;

//   AnswerModel({
//     required this.networkType,
//     required this.rSRQ,
//     required this.rSRP,
//     required this.rSSI,
//     required this.sINR,
//     required this.buisyHours,
//     required this.buisyHoursDataSpeed,
//     required this.networkMesureTime,
//     required this.nameRBS,
//     required this.sectorNmae,
//     required this.radioProviderOwner,
//     required this.dataSpeedMesurmenBefore,
//     required this.dataSpeedMesurmenAfter,
//     required this.testQualityValueBefore,
//     required this.testQualityValueAfter,
//     required this.customerRequestType,
//     required this.customerComplainceType,
//     required this.fieldEngineerComent,
//     required this.fieldWorkAction,
//   });

//   factory AnswerModel.fromJson(Map<String, dynamic> json) {
//     return AnswerModel(
//       networkType: json['networkType'],
//       rSRQ: json['rSRQ'],
//       rSRP: json['rSRP'],
//       rSSI: json['rSSI'],
//       sINR: json['sINR'],
//       buisyHours: json['buisyHours'],
//       buisyHoursDataSpeed: json['buisyHoursDataSpeed'],
//       networkMesureTime: json['networkMesureTime'],
//       nameRBS: json['nameRBS'],
//       sectorNmae: json['sectorNmae'],
//       radioProviderOwner: json['radioProviderOwner'],
//       dataSpeedMesurmenBefore: json['dataSpeedMesurmenBefore'],
//       dataSpeedMesurmenAfter: json['dataSpeedMesurmenAfter'],
//       testQualityValueBefore: json['testQualityValueBefore'],
//       testQualityValueAfter: json['testQualityValueAfter'],
//       customerRequestType: json['customerRequestType'],
//       customerComplainceType: json['customerComplainceType'],
//       fieldEngineerComent: json['fieldEngineerComent'],
//       fieldWorkAction: json['fieldWorkAction'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'networkType': networkType,
//       'rSRQ': rSRQ,
//       'rSRP': rSRP,
//       'rSSI': rSSI,
//       'sINR': sINR,
//       'buisyHours': buisyHours,
//       'buisyHoursDataSpeed': buisyHoursDataSpeed,
//       'networkMesureTime': networkMesureTime,
//       'nameRBS': nameRBS,
//       'sectorNmae': sectorNmae,
//       'radioProviderOwner': radioProviderOwner,
//       'dataSpeedMesurmenBefore': dataSpeedMesurmenBefore,
//       'dataSpeedMesurmenAfter': dataSpeedMesurmenAfter,
//       'testQualityValueBefore': testQualityValueBefore,
//       'testQualityValueAfter': testQualityValueAfter,
//       'customerRequestType': customerRequestType,
//       'customerComplainceType': customerComplainceType,
//       'fieldEngineerComent': fieldEngineerComent,
//       'fieldWorkAction': fieldWorkAction,
//     };
//   }
// }

List<NewTicketModel> generateFakeData(int count) {
  List<NewTicketModel> myFakeData = [];

  for (int i = 0; i < count; i++) {
    NewTicketModel answerModel = NewTicketModel(
      networkType: '4G',
      rSRQ: '-12',
      rSRP: '-100',
      rSSI: '-70',
      sINR: '20',
      buisyHours: '18:00 - 20:00',
      buisyHoursDataSpeed: '50Mbps',
      networkMesureTime: '2024-07-21 10:00:00',
      nameRBS: 'RBS123',
      sectorNmae: 'SectorA',
      radioProviderOwner: 'ProviderX',
      dataSpeedMesurmenBefore: '45Mbps',
      dataSpeedMesurmenAfter: '55Mbps',
      testQualityValueBefore: 'Good',
      testQualityValueAfter: 'Excellent',
      customerRequestType: 'Coverage Issue',
      customerComplainceType: 'Low Speed',
      fieldEngineerComent: 'Issue resolved',
      fieldWorkAction: 'Optimized Network Settings',
      ticketNumber: '$i wfesfmslgfrlk evrevref er fger g re g reg erklg ekrl hrt hlkyj tyj tylj tl yj kyt j ytj tyj ltylj kltyk jtyj ktyjk ltyj ktyjytj',
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
    );
    myFakeData.add(answerModel);
  }
  return myFakeData;
}
