import 'package:get_it/get_it.dart';
import 'package:learnyoutube/service/album_service.dart';

GetIt locatoer = GetIt.instance;

initLocator() {
  locatoer
      .registerLazySingleton<AlbumService>(() => AblumServiceImplementation());
}
