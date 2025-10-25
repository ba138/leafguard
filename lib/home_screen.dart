import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final title = Provider((ref) {
  return 'Ali';
});
final age = Provider((ref) {
  return 24;
});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenTitle = ref.watch(title);
    final userAge = ref.watch(age);
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Column(
        children: [
          Center(child: Text(screenTitle)),
          Center(child: Text("Age: $userAge")),
        ],
      ),
    );
  }
}
