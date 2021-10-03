import 'dart:developer';

import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';

abstract class SongsFoldersLocalDataSource {
  const SongsFoldersLocalDataSource();

  /// Query songs folders with:
  /// * Folder name.
  /// * Songs count in a folder.
  /// * Artwork for one of the songs in the folder to represent.
  /// the folder songs content.
  ///
  /// Returns raw query (list of map) containing the mentioned information.
  Future<List<Map<String, Object?>>> querySongsFolders();
}

class SongsFoldersLocalDataSourceImp extends SongsFoldersLocalDataSource {
  const SongsFoldersLocalDataSourceImp();
  @override
  Future<List<Map<String, Object?>>> querySongsFolders() async {
    final db = await LocalDatabase.openLocalDatabase();

    return await db.rawQuery('''
          SELECT ${SongTable.folderName},
          songs.${SongTable.albumId},
          art.${ArtworkTable.albumArtwork},
          COUNT(*) as songs_count
          FROM (
               SELECT ${SongTable.folderName},
                      ${SongTable.albumId}
               FROM ${SongTable.tableName}
               ORDER BY ${SongTable.albumId} DESC
               ) AS songs

          LEFT JOIN ${ArtworkTable.tableName} AS art
              ON songs.${SongTable.albumId} = art.${ArtworkTable.albumId}

          GROUP BY songs.${SongTable.folderName}
          
          ''');
  }
}
