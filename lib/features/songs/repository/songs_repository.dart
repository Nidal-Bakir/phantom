import 'package:phantom/features/songs/data/local_song_data_source.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';

class SongsRepository {
  final LocalSongDataSource _localSongDataSource;
  // the songs repository dose not hold any information about songs or what
  // the bloc has of data, because that's will lead to tow duplicated info
  // present in the memory one in the (bloc) and the other one in songs repository
  // so we don't need that duplication, especially because the data has
  // album artwork images in it.
  SongsRepository(this._localSongDataSource);

  /// Query songs from the database.
  /// * [songSortType] based on what the sort will be.
  /// * [songOrderType] the order type [ASC] or [DESC].
  /// * [limit] set a limit of how many songs to query from database.
  /// * [offset] specifies the starting index.
  ///
  /// Returns [SongsContainer] contain list of [Song] and map of album artworks,
  /// where each song correspond to one or none artwork based on their album id.
  /// 
  /// `` coped from [LocalSongDataSource.querySongsFromLocalDatabase]``
  Future<SongsContainer> querySongs({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  }) =>
      _localSongDataSource.querySongsFromLocalDatabase(
        songOrderType: songOrderType,
        songSortType: songSortType,
        limit: limit,
        offset: offset,
      );
}
