import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipeable List Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwipeableListScreen(),
    );
  }
}

class SwipeableListScreen extends StatefulWidget {
  const SwipeableListScreen({super.key});

  @override
  _SwipeableListScreenState createState() => _SwipeableListScreenState();
}

class _SwipeableListScreenState extends State<SwipeableListScreen> {
  final List<String> _items = List.generate(10, (index) => 'Item ${index + 1}');

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Item deleted')),
    );
  }

  void _editItem(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Edit option selected for ${_items[index]}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipeable List Example'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(_items[index]),
            background: Container(
              color: Colors.green,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20.0),
              child: const Icon(Icons.edit, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                _editItem(index);
              } else if (direction == DismissDirection.endToStart) {
                _deleteItem(index);
              }
            },
            child: ListTile(
              title: Text(_items[index]),
            ),
          );
        },
      ),
    );
  }
}