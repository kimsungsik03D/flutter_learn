import 'package:learnyoutube/data_provider/api_provider.dart';
import 'package:learnyoutube/model/albums.dart';

class AlbumRepository {
  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAllAlbums() async => _albumApiProvider.fetchAlbumList();
}
