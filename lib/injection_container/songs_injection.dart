import 'package:get_it/get_it.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
import 'package:phantom/features/songs/presentation/bloc/songs_bloc/bloc/songs_bloc.dart';
import 'package:phantom/features/songs/repository/songs_repository.dart';

var di = GetIt.I;

void songsInit() {
  // bloc
  di.registerFactory<SongsBloc>(() => SongsBloc(di.get(), di.get()));
  // repository
  di.registerLazySingleton<SongsRepository>(() => SongsRepository(di.get()));

  // local data source
  di.registerLazySingleton<LocalSongDataSource>(
      () => const LocalSongDataSourceImp());
}
