import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridScreen(),
    );
  }
}

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image URLs
    final List<String> imageUrls = List<String>.generate(
      20,
      (index) => 'https://via.placeholder.com/150?text=Image+${index + 1}',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0, // Horizontal spacing
            mainAxisSpacing: 8.0, // Vertical spacing
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}