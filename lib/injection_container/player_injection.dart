import 'package:get_it/get_it.dart';
import 'package:phantom/core/data/currently_playing_song_data_source.dart';
import 'package:phantom/core/player/data/player_service/player_service.dart';
import 'package:phantom/core/player/data/queue_data_source/queue_data_source.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/player/repository/player_repository.dart';

var di = GetIt.I;
void playerInit() {
  // blocs
  di.registerFactory<PlayerBloc>(() => PlayerBloc(di.get()));
  di.registerFactory<QueueBloc>(() => QueueBloc(di.get()));

  // repository
  di.registerLazySingleton<PlayerRepository>(
      () => PlayerRepository(di.get(), di.get(), di.get()));

  // data source
  di.registerLazySingleton<QueueDataSource>(() => QueueDataSourceImp());
  di.registerLazySingleton<PlayerService>(() => PlayerServiceImp(di.get()));
  di.registerLazySingleton<CurrentlyPlayingSongDataSource>(
      () => CurrentlyPlayingSongDataSourceImpl());
}
