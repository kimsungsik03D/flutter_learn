import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnyoutube/model/album_serv.dart';

abstract class AlbumService {
  Future<List<AlbumServ>> fetchAlbums();
}

class AblumServiceImplementation implements AlbumService {
  @override
  Future<List<AlbumServ>> fetchAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final List<AlbumServ> result = jsonDecode(response.body)
        .map<AlbumServ>((json) => AlbumServ.fromJSON(json))
        .toList();
    return result;
  }
}
