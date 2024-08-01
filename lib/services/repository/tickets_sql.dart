import 'package:kcell_fwa_mobile/model/history_ticket_list_model.dart';
import 'package:kcell_fwa_mobile/model/history_ticket_model.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/services/repository/tickets_sql_interface.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TicketsSQL implements TicketsSqlInterface {
  TicketsSQL();
  static Database? _database;

  // Ensures the database is initialized
  Future<Database> get databaseCheck async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDatabase();
      return _database!;
    }
  }

  // Initializes the database
  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'new_tickets_database.db'),
      onCreate: (db, version) {
        db.execute(
          '''CREATE TABLE history_tickets_list (
            id INTEGER PRIMARY KEY, 
            ticketNumber TEXT NOT NULL
            ticketRecivedDate TEXT NOT NULL
          )''',
        );
        db.execute(
          '''CREATE TABLE history_tickets (
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            ticketNumber TEXT NOT NULL, 
            ticketRecivedDate TEXT NOT NULL,
            ticketType TEXT,
            serviceTypeKcell TEXT,
            ticketDateSetupDate: '',
            regionName TEXT,
            subareaName TEXT,
            oblastName TEXT,
            cityName TEXT,
            streetName TEXT,
            houseId TEXT,
            streetCroseName TEXT,
            fullAdress TEXT,
            phoneNumber TEXT,
            customerName TEXT,
            lat TEXT,
            long TEXT,
            description TEXT,
            creatorName TEXT,
            networkType TEXT,
            rSRQ TEXT,
            rSRP TEXT,
            rSSI TEXT,
            sINR TEXT,
            buisyHours TEXT,
            buisyHoursDataSpeed TEXT,
            networkMesureTime TEXT,
            nameRBS TEXT,
            sectorNmae TEXT,
            radioProviderOwner TEXT,
            dataSpeedMesurmenBefore TEXT,
            dataSpeedMesurmenAfter TEXT,
            testQualityValueBefore TEXT,
            testQualityValueAfter TEXT,
            customerRequestType TEXT,
            customerComplainceType TEXT,
            fieldEngineerComent TEXT,
            fieldWorkAction TEXT,
            newTicketsListId INTEGER NOT NULL,
            FOREIGN KEY(newTicketsListId) REFERENCES new_tickets_list(id)
          )''',
        );
        db.execute(
          '''CREATE TABLE new_tickets (
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            ticketNumber TEXT NOT NULL, 
            ticketRecivedDate TEXT NOT NULL,
            ticketType TEXT,
            serviceTypeKcell TEXT,
            ticketDateSetupDate: '',
            regionName TEXT,
            subareaName TEXT,
            oblastName TEXT,
            cityName TEXT,
            streetName TEXT,
            houseId TEXT,
            streetCroseName TEXT,
            fullAdress TEXT,
            phoneNumber TEXT,
            customerName TEXT,
            lat TEXT,
            long TEXT,
            description TEXT,
            creatorName TEXT,
            networkType TEXT,
            rSRQ TEXT,
            rSRP TEXT,
            rSSI TEXT,
            sINR TEXT,
            buisyHours TEXT,
            buisyHoursDataSpeed TEXT,
            networkMesureTime TEXT,
            nameRBS TEXT,
            sectorNmae TEXT,
            radioProviderOwner TEXT,
            dataSpeedMesurmenBefore TEXT,
            dataSpeedMesurmenAfter TEXT,
            testQualityValueBefore TEXT,
            testQualityValueAfter TEXT,
            customerRequestType TEXT,
            customerComplainceType TEXT,
            fieldEngineerComent TEXT,
            fieldWorkAction TEXT,
          )''',
        );
      },
      version: 1,
    );
  }

  @override
  Future<void> addNewTicketData(NewTicketModel ticketData) async {
    final Database db = await databaseCheck;

    await db.insert(
      'new_tickets',
      ticketData.toMap(),
    );
  }

  @override
  Future<void> updateNewTicketData(String id, NewTicketModel ticketData) async {
    final Database db = await databaseCheck;

    await db.update(
      'new_tickets',
      ticketData.toMap(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<List<NewTicketModel>> getAllNewTicketData() async {
    final Database db = await databaseCheck;

    final List<Map<String, dynamic>> maps = await db.query('new_tickets');
    return List.generate(maps.length, (i) {
      return NewTicketModel.fromMap(maps[i]);
    });
  }


  @override
  Future<void> deleteNewTicketDataById(String ticketId) async {
    final Database db = await databaseCheck;

    await db.delete(
      'new_tickets',
      where: 'id = ?',
      whereArgs: [ticketId],
    );
  }

  @override
  Future<void> addHistoryTicketData(HistoryTicketModel historyTicket) async {
    final Database db = await databaseCheck;

    await db.insert(
      'history_tickets',
      historyTicket.toMap(),
    );
  }

  @override
  Future<void> addHistoryTicketsListData(HistoryTicketsListModel historyTicketsList) async {
    final Database db = await databaseCheck;

    await db.insert(
      'history_tickets_list',
      historyTicketsList.toMap(),
    );

  }

  @override
  Future<void> deleteHistoryTicketsAllData() async {
    final Database db = await databaseCheck;

    await db.delete(
      'history_tickets',
    );
    await db.delete(
      'history_tickets_list',
    );
  }

  @override
  Future<List<HistoryTicketModel>> getHistoryTicketsByHistoryTicketsListId(int id) async {
    final Database db = await databaseCheck;

    final List<Map<String, dynamic>> maps = await db.query('history_tickets', where: 'historyTicketsListId = ?', whereArgs: [id]);
    return List.generate(maps.length, (i) {
      return HistoryTicketModel.fromMap(maps[i]);
    });
  }

  @override
  Future<List<HistoryTicketsListModel>> getHistoryTicketsListAllData() async {
    final Database db = await databaseCheck;

    final List<Map<String, dynamic>> maps = await db.query('history_tickets_list');
    return List.generate(maps.length, (i) {
      return HistoryTicketsListModel.fromMap(maps[i]);
    });
  }
}
