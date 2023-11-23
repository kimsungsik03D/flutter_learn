import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learnyoutube/model/album_pro.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier {
  final List<AlbumPro> _albumProList = List.empty(growable: true);

  List<AlbumPro> getAlbumList() {
    _fetchAlbums();
    return _albumProList;
  }

  void _fetchAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final List<AlbumPro> result = jsonDecode(response.body)
        .map<AlbumPro>((json) => AlbumPro.fromJSON(json))
        .toList();
    _albumProList.clear();
    _albumProList.addAll(result);
    notifyListeners();
  }
}
