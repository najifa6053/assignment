import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Asset Image Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageScreen(),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Asset Image'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/sample_image.png', // Path to your image
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}