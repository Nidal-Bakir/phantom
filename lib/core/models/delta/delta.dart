import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delta.freezed.dart';
part 'delta.g.dart';

@freezed
class Delta with _$Delta {
  @JsonSerializable(
    explicitToJson: true,
  )
  /// the Delta between local database and device songs, 
  /// which hold the new songs added to local database
  /// and removed songs represented as set of ids
  const factory Delta.deltaSongs(
      {required Set<int> newSongsIds,
      required Set<int> deletedSongsIds}) = DeltaSongs;
  factory Delta.fromJson(Map<String, dynamic> map) => _$DeltaFromJson(map);
}
