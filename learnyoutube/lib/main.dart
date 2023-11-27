import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:learnyoutube/countController.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RiverPod Example",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("GetX Example")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (_) => Text(
                  "Current Counter: ${Get.find<CounterController>().counter}"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => Get.find<CounterController>().increase(),
                    child: const Text("증가")),
                TextButton(
                    onPressed: () => Get.find<CounterController>().decrease(),
                    child: const Text("김소"))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
