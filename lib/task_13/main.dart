import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom AppBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomAppBarScreen(),
    );
  }
}

class CustomAppBarScreen extends StatelessWidget {
  const CustomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/logo.png', // Path to your logo
            fit: BoxFit.contain,
          ),
        ),
        title: const Text('Custom AppBar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu action
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to the Custom AppBar Example!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}