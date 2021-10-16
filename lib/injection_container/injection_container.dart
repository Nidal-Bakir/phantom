import 'package:phantom/injection_container/player_injection.dart';
import 'package:phantom/injection_container/songs_injection.dart';
import 'package:phantom/injection_container/sync_injection.dart';

import 'folder_injection.dart';

void init() {
  // sync init
  syncInit();

  // player init
  playerInit();

  // songs feature
  songsInit();

  // folders feature
  foldersInit();
}
