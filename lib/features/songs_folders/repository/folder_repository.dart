import 'dart:typed_data';

import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/features/songs_folders/data/songs_folders_local_data_surce.dart';
import 'package:phantom/features/songs_folders/model/songs_folder.dart';

class FoldersRepository {
  final SongsFoldersLocalDataSource _folderDataSource;

  FoldersRepository(this._folderDataSource);

  /// Query songs folders with information about the folder:
  /// * Folder name.
  /// * Songs count in a folder.
  /// * Artwork for one of the songs in the folder to represent.
  /// the folder songs content.
  /// Returns List of [SongsFolder]s.
  Future<List<SongsFolder>> querySongsFolders() async {
    final folders = await _folderDataSource.querySongsFolders();
    return folders.map((e) => SongsFolder.fromJson(e)).toList();
  }
}
