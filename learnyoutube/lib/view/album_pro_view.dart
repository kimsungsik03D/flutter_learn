import 'package:flutter/material.dart';
import 'package:learnyoutube/model/album_pro.dart';
import 'package:learnyoutube/provider/album_provider.dart';
import 'package:provider/provider.dart';

class AlbumProView extends StatefulWidget {
  const AlbumProView({super.key});

  @override
  State<AlbumProView> createState() => _AlbumProViewState();
}

class _AlbumProViewState extends State<AlbumProView> {
  late List<AlbumPro> albumList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider 패턴 실습")),
      body: Consumer<AlbumProvider>(builder: (context, provider, child) {
        albumList = provider.getAlbumList();
        return ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                child:
                    Text('${albumList[index].id}: ${albumList[index].title}'),
              );
            });
      }),
    );
  }
}
