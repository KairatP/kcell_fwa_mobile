class NewTicketModel {
  int? id;
  String ticketNumber;
  String ticketRecivedDate;
  String ticketSetupDate;
  String ticketType;
  String serviceTypeKcell;
  String regionName;
  String subareaName;
  String oblastName;
  String cityName;
  String streetName;
  String houseId;
  String streetCroseName;
  String fullAdress;
  String phoneNumber;
  String customerName;
  String lat;
  String long;
  String description;
  String creatorName;
  String networkType;
  String beforeRSRQ;
  String beforeRSRP;
  String beforeRSSI;
  String beforeSINR;
  String afterRSRQ;
  String afterRSRP;
  String afterRSSI;
  String afterSINR;
  String beforeNetworkQuality;
  String afterNetworkQuality;
  String buisyHours;
  String buisyHoursDataSpeed;
  String networkMesureTime;
  String nameRBS;
  String sectorNmae;
  String radioProviderOwner;
  String dataSpeedMesurmenBefore;
  String dataSpeedMesurmenAfter;
  String testQualityValueBefore;
  String testQualityValueAfter;
  String customerRequestType;
  String customerRequestTypeOther;
  // String customerComplainceType;
  // String fieldEngineerComent;
  String fieldWorkAction;
  String fieldWorkActionOther;
  String comersialRecomendation;
  String nwImprovmentRecomendation;
  String complianceHistory;
  NewTicketModel({
    this.id,
    required this.ticketNumber,
    required this.ticketRecivedDate,
    required this.ticketSetupDate,
    required this.ticketType,
    required this.serviceTypeKcell,
    required this.regionName,
    required this.subareaName,
    required this.oblastName,
    required this.cityName,
    required this.streetName,
    required this.houseId,
    required this.streetCroseName,
    required this.fullAdress,
    required this.phoneNumber,
    required this.customerName,
    required this.lat,
    required this.long,
    required this.description,
    required this.creatorName,
    required this.networkType,
    required this.beforeRSRQ,
    required this.beforeRSRP,
    required this.beforeRSSI,
    required this.beforeSINR,
    required this.afterRSRQ,
    required this.afterRSRP,
    required this.afterRSSI,
    required this.afterSINR,
    required this.beforeNetworkQuality,
    required this.afterNetworkQuality,
    required this.buisyHours,
    required this.buisyHoursDataSpeed,
    required this.networkMesureTime,
    required this.nameRBS,
    required this.sectorNmae,
    required this.radioProviderOwner,
    required this.dataSpeedMesurmenBefore,
    required this.dataSpeedMesurmenAfter,
    required this.testQualityValueBefore,
    required this.testQualityValueAfter,
    required this.customerRequestType,
    required this.customerRequestTypeOther,
    // required this.customerComplainceType,
    // required this.fieldEngineerComent,
    required this.fieldWorkAction,
    required this.fieldWorkActionOther,
    required this.comersialRecomendation,
    required this.nwImprovmentRecomendation,
    required this.complianceHistory,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ticketNumber': ticketNumber,
      'ticketRecivedDate': ticketRecivedDate,
      'ticketSetupDate': ticketSetupDate,
      'ticketType': ticketType,
      'serviceTypeKcell': serviceTypeKcell,
      'regionName': regionName,
      'subareaName': subareaName,
      'oblastName': oblastName,
      'cityName': cityName,
      'streetName': streetName,
      'houseId': houseId,
      'streetCroseName': streetCroseName,
      'fullAdress': fullAdress,
      'phoneNumber': phoneNumber,
      'customerName': customerName,
      'lat': lat,
      'long': long,
      'description': description,
      'creatorName': creatorName,
      'networkType': networkType,
      'beforeRSRQ': beforeRSRQ,
      'beforeRSRP': beforeRSRP,
      'beforeRSSI': beforeRSSI,
      'beforeSINR': beforeSINR,
      'afterRSRQ': afterRSRQ,
      'afterRSRP': afterRSRP,
      'afterRSSI': afterRSSI,
      'afterSINR': afterSINR,
      'beforeNetworkQuality': beforeNetworkQuality,
      'afterNetworkQuality': afterNetworkQuality,
      'buisyHours': buisyHours,
      'buisyHoursDataSpeed': buisyHoursDataSpeed,
      'networkMesureTime': networkMesureTime,
      'nameRBS': nameRBS,
      'sectorNmae': sectorNmae,
      'radioProviderOwner': radioProviderOwner,
      'dataSpeedMesurmenBefore': dataSpeedMesurmenBefore,
      'dataSpeedMesurmenAfter': dataSpeedMesurmenAfter,
      'testQualityValueBefore': testQualityValueBefore,
      'testQualityValueAfter': testQualityValueAfter,
      'customerRequestType': customerRequestType,
      // 'customerComplainceType': customerComplainceType,
      // 'fieldEngineerComent': fieldEngineerComent,
      'fieldWorkAction': fieldWorkAction,
      'fieldWorkActionOther': fieldWorkActionOther,
      'customerRequestTypeOther': customerRequestTypeOther,
      'comersialRecomendation': comersialRecomendation,
      'nwImprovmentRecomendation': nwImprovmentRecomendation,
      'complianceHistory': complianceHistory,
    };
  }

  factory NewTicketModel.fromMap(Map<String, dynamic> map) {
    return NewTicketModel(
      id: map['id'],
      ticketNumber: map['ticketNumber'],
      ticketRecivedDate: map['ticketRecivedDate'],
      ticketSetupDate: map['ticketSetupDate'],
      ticketType: map['ticketType'],
      serviceTypeKcell: map['serviceTypeKcell'],
      regionName: map['regionName'],
      subareaName: map['subareaName'],
      oblastName: map['oblastName'],
      cityName: map['cityName'],
      streetName: map['streetName'],
      houseId: map['houseId'],
      streetCroseName: map['streetCroseName'],
      fullAdress: map['fullAdress'],
      phoneNumber: map['phoneNumber'],
      customerName: map['customerName'],
      lat: map['lat'],
      long: map['long'],
      description: map['description'],
      creatorName: map['creatorName'],
      networkType: map['networkType'],
      beforeRSRQ: map['beforeRSRQ'],
      beforeRSRP: map['beforeRSRP'],
      beforeRSSI: map['beforeRSSI'],
      beforeSINR: map['beforeSINR'],
      afterRSRQ: map['afterRSRQ'],
      afterRSRP: map['afterRSRP'],
      afterRSSI: map['afterRSSI'],
      afterSINR: map['afterSINR'],
      beforeNetworkQuality: map['beforeNetworkQuality'],
      afterNetworkQuality: map['afterNetworkQuality'],
      buisyHours: map['buisyHours'],
      buisyHoursDataSpeed: map['buisyHoursDataSpeed'],
      networkMesureTime: map['networkMesureTime'],
      nameRBS: map['nameRBS'],
      sectorNmae: map['sectorNmae'],
      radioProviderOwner: map['radioProviderOwner'],
      dataSpeedMesurmenBefore: map['dataSpeedMesurmenBefore'],
      dataSpeedMesurmenAfter: map['dataSpeedMesurmenAfter'],
      testQualityValueBefore: map['testQualityValueBefore'],
      testQualityValueAfter: map['testQualityValueAfter'],
      customerRequestType: map['customerRequestType'],
      // customerComplainceType: map['customerComplainceType'],
      // fieldEngineerComent: map['fieldEngineerComent'],
      fieldWorkAction: map['fieldWorkAction'],
      fieldWorkActionOther: map['fieldWorkActionOther'],
      customerRequestTypeOther: map['customerRequestTypeOther'],
      comersialRecomendation: map['comersialRecomendation'],
      nwImprovmentRecomendation: map['nwImprovmentRecomendation'],
      complianceHistory: map['complianceHistory'],
    );
  }
}
