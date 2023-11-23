import 'package:flutter/material.dart';
import 'package:learnyoutube/bloc/album_bloc.dart';
import 'package:learnyoutube/model/albums.dart';

void main() {
  runApp(const Album());
}

class Album extends StatelessWidget {
  const Album({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AlbumView(),
    );
  }
}

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  final AlbumBloc _albumBloc = AlbumBloc();

  @override
  void initState() {
    _albumBloc.fetchAllAlbums();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Bloc 패턴 예제"),
      ),
      body: StreamBuilder<Albums>(
        stream: _albumBloc.allAlbums,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Albums? albumList = snapshot.data;
            return ListView.builder(
              itemCount: albumList?.albums.length,
              itemBuilder: (con, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    Text("ID : ${albumList?.albums[index].id.toString()}"),
                    Text("Title : ${albumList?.albums[index].title}"),
                  ]),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
        },
      ),
    ));
  }
}
