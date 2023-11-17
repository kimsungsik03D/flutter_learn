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
    {"title": "Sample Title 1", "color": Colors.red},
    {"title": "Sample Title 2", "color": Colors.yellow},
    {"title": "Sample Title 3", "color": Colors.lightBlue},
    {"title": "Sample Title 4", "color": Colors.pink},
    {"title": "Sample Title 5", "color": Colors.purple},
    {"title": "Sample Title 6", "color": Colors.black}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("text Title")),
        body: GridView(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12),
          children: [
            postContainer(number: "1", colorData: Colors.red),
            postContainer(number: "2", colorData: Colors.yellow),
            postContainer(number: "3", colorData: Colors.lightBlue),
            postContainer(number: "4", colorData: Colors.pink),
            postContainer(number: "5", colorData: Colors.red),
            postContainer(number: "6", colorData: Colors.yellow),
            postContainer(number: "7", colorData: Colors.lightBlue),
            postContainer(number: "8", colorData: Colors.pink),
            postContainer(number: "9", colorData: Colors.red),
            postContainer(number: "10", colorData: Colors.yellow),
            postContainer(number: "11", colorData: Colors.lightBlue),
            postContainer(number: "12", colorData: Colors.pink),
          ],
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
