import 'package:get_it/get_it.dart';
import 'package:phantom/features/songs_folders/data/songs_folders_local_data_surce.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folder_bloc/folder_bloc.dart';
import 'package:phantom/features/songs_folders/repository/folder_repository.dart';

var di = GetIt.I;

void foldersInit() {
  // bloc
  di.registerFactory<FolderBloc>(() => FolderBloc(di.get()));
  // repository
  di.registerLazySingleton<FolderRepository>(() => FolderRepository(di.get()));

  // local data source
  di.registerLazySingleton<SongsFoldersLocalDataSource>(
      () => const SongsFoldersLocalDataSourceImp());
}
