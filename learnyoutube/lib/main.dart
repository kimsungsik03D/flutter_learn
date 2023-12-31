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
    const String url =
        "https://cdn.pixabay.com/photo/2016/10/18/21/22/beach-1751455_960_720.jpg";
    return Scaffold(
        appBar: AppBar(title: const Text("text Title")),
        body: Container(
            child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () => print("ElevatedButton"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    textStyle: const TextStyle(fontSize: 10)),
                child: const Text("ElevatedButton"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => print("TextButton"),
                child: const Text("TextButton"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("OutlinedButton"),
                child: const Text("OutlinedButton"),
              ),
            )
          ],
        )));
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(child: Text("Box $number")),
    );
  }
}
