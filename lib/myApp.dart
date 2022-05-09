import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var inputText = '';

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
              TextField(onChanged: (text) {
                setState(() {
                  inputText = text;
                });
              }),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: inputText.isEmpty ? null : () {},
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
