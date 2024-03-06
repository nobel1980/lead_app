import 'package:flutter/material.dart';
import 'package:lead_app/screens/counter_app.dart';
import 'package:lead_app/screens/home_page.dart';
import 'package:lead_app/screens/list_view_example.dart';
import 'package:lead_app/screens/stack_example.dart';

void main() {
  runApp(MyApp());
}

MaterialApp MyApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackExample(),
  );
}
