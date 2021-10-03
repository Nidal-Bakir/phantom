import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:phantom/core/data/database/database_table.dart';

part 'songs_folder.freezed.dart';
part 'songs_folder.g.dart';
@freezed
class Folder with _$Folder {
  @JsonSerializable()
  const factory Folder.songsFolder({
    @JsonKey(name: SongTable.folderName) required String folderName,
    @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
        required Uint8List? artWork,
    @JsonKey(name: 'songs_count') required int songsCount,
  }) = SongsFolder;
    factory Folder.fromJson(Map<String,dynamic> map)=> _$FolderFromJson(map);
}

Uint8List? _artworkFromJson(Uint8List? artwork) => artwork;
