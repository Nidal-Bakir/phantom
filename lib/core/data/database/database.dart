import 'package:path/path.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  const LocalDatabase._();

  /// Open the local database if it's not open then
  /// return singleton object of [Database] object
  ///
  /// All the pre created tables are created in this function if the database not
  /// exist yet using the [onCreate] callback.
  static Future<Database> openLocalDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'phantom.db');

    // open the database
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the tables
      await db.execute(SongTable.tableCreation);
    });
  }
}
