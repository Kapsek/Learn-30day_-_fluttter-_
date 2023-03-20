import 'package:app1/pages/home%20_page.dart';
import 'package:app1/pages/login_page.dart';
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
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/Home",
      routes: {
        "/": (context) => LoginPage(),
         "/Home":(context) => Homepage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
