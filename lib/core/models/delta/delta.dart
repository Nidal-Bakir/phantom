import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';

part 'delta.freezed.dart';
part 'delta.g.dart';

@freezed
class Delta with _$Delta {
  @JsonSerializable(explicitToJson: true)

  /// New added songs to the database.
  const factory Delta.newAddedSongs({
    required SongsContainer newSongsContainer,
  }) = NewAddedSongs;

  /// Deleted ids songs from database.
  const factory Delta.deletedSongsIds({
    required Set<int> deletedSongsIds,
  }) = DeletedSongsIds;

  /// Updated songs in the database.
  const factory Delta.updatedSongs({
    required List<Song> updatedSongs,
  }) = UpdatedSongs;

  /// Done publishing delta changes (sync is done).
  const factory Delta.donePublishing() = DonePublishing;
  
  factory Delta.fromJson(Map<String, dynamic> map) => _$DeltaFromJson(map);
}
