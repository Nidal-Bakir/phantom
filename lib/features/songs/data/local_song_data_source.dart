import 'package:phantom/core/models/song/song.dart';
enum SongSortType {
  songName,
  artistName,
  dateAdded,
}
enum SongOrderType {
asc, desc,
}
abstract class LocalSongDataSource {
  Stream<Song> getSongs();
}
