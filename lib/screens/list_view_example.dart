import 'package:flutter/material.dart';

final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index) => Card(
          child: Center(
            child: Text(items[index]),
          ),
        ),
      ),
    );
  }
}
