import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      home: HomeView(),
    );
  }
}

class HomeView extends ConsumerWidget {
  HomeView({Key? key}) : super(key: key);
  final counterProvider = StateNotifierProvider((ref) => Counter());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    ref.listen(
      counterProvider,
      ((prev, next) {
        print("상태 반영: $prev, $next");
      }),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: ${count.toString()}",
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => ref.watch(counterProvider.notifier).increment(),
              child: const Text(
                "증가",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
}
