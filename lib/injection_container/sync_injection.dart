import 'package:get_it/get_it.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';

var di = GetIt.I;

void syncInit() {
  // delta dispatcher
  di.registerLazySingleton<DeltaDispatcher>(() => DeltaDispatcher());
}
