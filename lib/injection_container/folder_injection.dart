import 'package:get_it/get_it.dart';
import 'package:phantom/features/songs_folders/data/songs_folders_local_data_surce.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folders_bloc/folders_bloc.dart';
import 'package:phantom/features/songs_folders/repository/folder_repository.dart';

var di = GetIt.I;

void foldersInit() {
  // bloc
  di.registerFactory<FoldersBloc>(() => FoldersBloc(di.get(), di.get()));
  // repository
  di.registerLazySingleton<FoldersRepository>(
      () => FoldersRepository(di.get()));

  // local data source
  di.registerLazySingleton<SongsFoldersLocalDataSource>(
      () => const SongsFoldersLocalDataSourceImp());
}
