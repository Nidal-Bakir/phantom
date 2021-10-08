part of 'songs_bloc.dart';

@freezed
class SongsEvent with _$SongsEvent {
  /// load songs form local database with sort.
  const factory SongsEvent.songsLoaded({
    required Sort sort,
  }) = SongsLoaded;

  /// Reload the songs with different order.
  const factory SongsEvent.songsSorted({
    required Sort sort,
  }) = SongsSorted;

  /// Reload songs from the local database if [fromDevice] is false.
  ///
  /// If [fromDevice] is true, sync the songs from local database with songs on the device then reload
  /// the songs from the local database.
  ///
  const factory SongsEvent.songsRefreshed({
    @Default(false) bool fromDevice,
  }) = SongsRefreshed;

  /// Added new Songs to current list of songs.
  const factory SongsEvent.songsAdded(List<Song> newSongs) = SongsAdded;

  /// Delete songs form current song list.
  const factory SongsEvent.songsDeleted(Set<int> deletedSongsIds) =
      SongsDeleted;

  /// Update songs in the songs list.
  const factory SongsEvent.songsUpdated(List<Song> updatedSongs) = SongsUpdated;
}
