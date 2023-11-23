import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learnyoutube/model/album_pro.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier {
  final List<Album_pro> _album_pro_list = List.empty(growable: true);

  List<Album_pro> getAlbumList() {
    _fetchAlbums();
    return _album_pro_list;
  }

  void _fetchAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final List<Album_pro> result = jsonDecode(response.body)
        .map<Album_pro>((json) => Album_pro.fromJSON(json))
        .toList();
    _album_pro_list.clear();
    _album_pro_list.addAll(result);
    notifyListeners();
  }
}
