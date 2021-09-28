import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/features/songs_folders/model/songs_folder.dart';

abstract class SongsFoldersLocalDataSource {
  Stream<SongsFolder> querySongsFolders();
}
class SongsFoldersLocalDataSourceImp extends SongsFoldersLocalDataSource{
  @override
  Stream<SongsFolder> querySongsFolders() async*{
     final db = await LocalDatabase.openLocalDatabase();
    
    
  }

}