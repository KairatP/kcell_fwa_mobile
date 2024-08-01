class HistoryTicketsListModel {
  int? id;
  String ticketNumber;
  String ticketRecivedDate;
  HistoryTicketsListModel({
    this.id,
    required this.ticketNumber,
    required this.ticketRecivedDate,
    });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ticketNumber': ticketNumber,
      'ticketRecivedDate': ticketRecivedDate,
    };
  }

  factory HistoryTicketsListModel.fromMap(Map<String, dynamic> map) {
    return HistoryTicketsListModel(
      id: map['id'],
      ticketNumber: map['ticketNumber'],
      ticketRecivedDate: map['ticketRecivedDate'],
    );
  }
}