import 'package:app1/pages/login_page.dart';
import 'package:app1/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int day = 30;
    String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer:MyDrawer(),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LoginPage()));
            // Navigator.pushNamed(context, '/Login');
          },
          child: Container(
            child: Text("Welcome to $day of Flutter by $name"),
          ),
        ),
      ),
    );
  }
}
