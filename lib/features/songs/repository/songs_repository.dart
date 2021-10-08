import 'dart:collection';
import 'dart:typed_data';

import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/util/sort.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';

class SongsRepository {
  final LocalSongDataSource _localSongDataSource;

  SongsRepository(this._localSongDataSource);

  /// Query songs from the database.
  /// * [sort]:
  ///   * [songSortType] based on what the sort will be.
  ///   * [songOrderType] the order type [ASC] or [DESC].
  ///
  /// Returns [SongsContainer] contain list of [Song] and map of album artworks,
  /// where each song correspond to one or Zero artwork based on their album id.
  Future<SongsContainer> querySongs({
    Sort sort = const Sort(
      orderType: SongOrderType.asc,
      sortType: SongSortType.songName,
    ),
  }) async {
    final songs = await _getAllSongs(sort);

    final artworks = await _getAllArtworks();

    return SongsContainer(albumArtwork: artworks, songs: songs);
  }

  Future<Map<int, Uint8List?>> _getAllArtworks() async {
    final artworksList = await _localSongDataSource.queryArtworksForAllSongs();
    final artworks = artworksList.fold<Map<int, Uint8List?>>(
        {},
        (previousValue, element) => previousValue
          ..putIfAbsent(element[ArtworkTable.albumId] as int,
              () => element[ArtworkTable.albumArtwork] as Uint8List?));
    return artworks;
  }

  Future<UnmodifiableListView<Song>> _getAllSongs(Sort sort) async {
    final rawSongs = await _localSongDataSource.querySongsFromLocalDatabase(
      sort: sort,
    );
    final songsList = rawSongs.map((songRow) => Song.fromJson(songRow));
    return UnmodifiableListView(songsList);
  }
}
