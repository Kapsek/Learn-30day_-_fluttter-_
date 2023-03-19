import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int day = 30;
    String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $day of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
