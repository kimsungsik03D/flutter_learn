import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var postList = [
    {"number": "Title 1", "color": Colors.red},
    {"number": "Title 2", "color": Colors.yellow},
    {"number": "Title 3", "color": Colors.lightBlue},
    {"number": "Title 4", "color": Colors.pink},
    {"number": "Title 5", "color": Colors.red},
    {"number": "Title 6", "color": Colors.yellow},
    {"number": "Title 7", "color": Colors.lightBlue},
    {"number": "Title 8", "color": Colors.red},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("text Title")),
        body: Container(
          child: Stack(
            children: [
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black26,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.lightBlue[200],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(left: 40, bottom: 150),
                  color: Colors.amber,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ));
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(child: Text("Box $number")),
    );
  }
}
