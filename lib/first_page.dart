import 'package:flutter/material.dart';
import 'package:flutter_application_3/main_page.dart';
import 'package:flutter_application_3/second_page.dart';
import 'package:flutter_application_3/third_page.dart';

void main() {
  runApp(const MyApp());
}

/// Very simple app for Lab 6: navigation examples
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab 6 Navigation',
      // Named routes
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
      // Default route
      initialRoute: '/',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
    );
  }
}