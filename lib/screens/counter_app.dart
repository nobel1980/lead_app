import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('You Have pushed the button this many times'),
            Text(
              '$_count',
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }

  _increment() {
    _count++;
    setState(() {});
    print(_count++);
  }
}
