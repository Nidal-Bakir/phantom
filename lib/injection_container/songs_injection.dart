import 'package:get_it/get_it.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';
import 'package:phantom/features/songs/bloc/songs_bloc/bloc/songs_bloc.dart';

var di = GetIt.I;
void songsInit() {
  // bloc
  di.registerFactory<SongsBloc>(() => SongsBloc(di.get(), di.get()));

  // delta dispatcher
  di.registerLazySingleton<DeltaDispatcher>(() => DeltaDispatcher());

  // local data source
  di.registerLazySingleton<LocalSyncSongDataSource>(
      () => const LocalSyncSongDataSourceImp());
}
