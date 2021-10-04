import 'dart:collection';
import 'dart:typed_data';

import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';
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
  /// where each song correspond to one or Zero artwork based on their album id.
  Future<SongsContainer> querySongs({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  }) async {
    final songs = await _localSongDataSource.querySongsFromLocalDatabase(
      songOrderType: songOrderType,
      songSortType: songSortType,
      limit: limit,
      offset: offset,
    );

    final artworks = await _querySongsArtworks(songs);

    final Map<int, Uint8List?> tempAlbumArtworkBuffer = {};
    final tempSongsBuffer = <Song>[];

    for (var song in songs) {
      // if a song do not has album id then it do not has artwork
      if (song[SongTable.albumId] != null && artworks.isNotEmpty) {
        final artworkWithAlbumId =
            _extractArtworkAssociatedWithAlbumId(artworks, song);

        if (artworkWithAlbumId.value != null) {
          tempAlbumArtworkBuffer.putIfAbsent(
              artworkWithAlbumId.key, () => artworkWithAlbumId.value);
        }
      }

      tempSongsBuffer.add(Song.fromJson(song));
    }

    return SongsContainer(
        albumArtwork: tempAlbumArtworkBuffer,
        songs: UnmodifiableListView(tempSongsBuffer));
  }

  MapEntry<int, Uint8List?> _extractArtworkAssociatedWithAlbumId(
      List<Map<String, Object?>> artworks, Map<String, Object?> song) {
    // get the corresponding artwork for this song
    final artworkRow = artworks.firstWhere(
      (artRow) => artRow[ArtworkTable.albumId] == song[SongTable.albumId],
      orElse: () => {
        ArtworkTable.albumArtwork: null,
        ArtworkTable.albumId: song[SongTable.albumId]
      },
    );

    final artwork = artworkRow[ArtworkTable.albumArtwork] as Uint8List?;
    final artworkAlbumId = artworkRow[ArtworkTable.albumId] as int;

    return MapEntry(artworkAlbumId, artwork);
  }

  Future<List<Map<String, Object?>>> _querySongsArtworks(
      List<Map<String, Object?>> songs) async {
    final songsAlbumIds = songs
        .where((e) => e[SongTable.albumId] != null)
        .map((e) => e[SongTable.albumId] as int)
        .toSet();

    return await _localSongDataSource
        .queryArtworksForSongsAlbumIds(songsAlbumIds);
  }
}
