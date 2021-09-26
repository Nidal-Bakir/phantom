part of 'songs_bloc.dart';

@freezed
class SongsEvent with _$SongsEvent {
  /// (load)/(load more) songs form local database with sort.
  /// * load first page of songs.
  /// * Indicate that the user reached the bottom of the list and need more songs
  /// to display.
  const factory SongsEvent.songsLoaded({
    required SongSortType songSortType,
    required SongOrderType songOrderType,
  }) = SongsLoaded;

  /// Reload the songs with different order.
  const factory SongsEvent.songsSorted({
    required SongSortType songSortType,
    required SongOrderType songOrderType,
  }) = SongsSorted;

  /// Reload songs from the local database if [fromDevice] is false.
  ///
  /// If [fromDevice] is true, sync the songs from local database with songs on the device then reload
  /// the songs from the local database.
  ///
  const factory SongsEvent.songsRefreshed({
    @Default(false) bool fromDevice,
  }) = SongsRefreshed;
}
