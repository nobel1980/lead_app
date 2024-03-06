import 'package:flutter/material.dart';
import 'package:lead_app/screens/home_page.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.network(
              url,
              //fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: -10,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
