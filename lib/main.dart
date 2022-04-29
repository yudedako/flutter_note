import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Note'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              const TextField(),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                child: const Text('保存'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
