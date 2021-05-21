// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Pages
import './pages/home.page.dart';

// Main Function
void main() {
  runApp(
    MyApp(),
  );
}

// MyApp StatefulWidget Class
class MyApp extends StatelessWidget {
  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:
          "State Reform and Development Efforts for the People Photo Record (2016-2020)",
      home: HomePage(),
    );
  }
}

