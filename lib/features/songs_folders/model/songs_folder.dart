import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'songs_folder.freezed.dart';

@freezed
class Folder with _$Folder {
  const factory Folder.songsFolder({
    required String folderName,
    required Uint8List? artWork,
    required int songsCount,
    required String folderPath,
  }) = SongsFolder;
}