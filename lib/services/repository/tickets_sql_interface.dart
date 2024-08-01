import 'package:kcell_fwa_mobile/model/history_ticket_list_model.dart';
import 'package:kcell_fwa_mobile/model/history_ticket_model.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';

abstract class TicketsSqlInterface {
  Future<void> addNewTicketData(NewTicketModel ticketData);
  Future<void> updateNewTicketData(String id, NewTicketModel ticketData);
  Future<void> deleteNewTicketDataById(String ticketId);
  Future<List<NewTicketModel>> getAllNewTicketData();
  Future<void> addHistoryTicketData(HistoryTicketModel historyTicket);
  Future<void> addHistoryTicketsListData(HistoryTicketsListModel historyTicketsList);
  Future<List<HistoryTicketModel>> getHistoryTicketsByHistoryTicketsListId(int id);
  Future<List<HistoryTicketsListModel>> getHistoryTicketsListAllData();
  Future<void> deleteHistoryTicketsAllData();
}
