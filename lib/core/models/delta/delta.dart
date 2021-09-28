import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:phantom/core/models/song/song.dart';

part 'delta.freezed.dart';
part 'delta.g.dart';

@freezed
class Delta with _$Delta {
  @JsonSerializable(explicitToJson: true)

  /// the new added songs to the database.
  const factory Delta.newAddedSongs({
    required List<Song> newSongs,
  }) = NewAddedSongs;

  const factory Delta.deletedSongsIds({
    required Set<int> deletedSongsIds,
  }) = DeletedSongsIds;

  factory Delta.fromJson(Map<String, dynamic> map) => _$DeltaFromJson(map);
}
