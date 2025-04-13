import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styles Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextStylesScreen(),
    );
  }
}

class TextStylesScreen extends StatelessWidget {
  const TextStylesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styles Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Large Bold Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Italic Text',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Underlined Text',
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Custom Font Weight',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Smaller Text',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}