import 'package:app1/home%20_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    // ignore: prefer_const_constructors
    return MaterialApp(
        home: Homepage(),
    );
  }
}
