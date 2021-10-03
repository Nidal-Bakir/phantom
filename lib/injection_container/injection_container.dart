import 'package:phantom/injection_container/songs_injection.dart';
import 'package:phantom/injection_container/sync_injection.dart';

import 'folder_injection.dart';

void init() {
  // sync init
  syncInit();

  // songs feature
  songsInit();
  
  // folders feature
  foldersInit();
}
