import 'package:coffee_card/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Coffee Card ID',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.brown[300],
              child: const Text('How I like my coffee...'),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.brown[200],
              child: const Textcoffee(),
            ),
          ],
        ),
      ),
    );
  }
}
