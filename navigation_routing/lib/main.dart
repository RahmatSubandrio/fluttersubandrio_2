import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import your HomeScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Customize theme (optional)
      ),
      home: HomeScreen(), // Set HomeScreen as the initial route
    );
  }
}