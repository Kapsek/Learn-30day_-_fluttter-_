import 'package:app1/pages/home%20_page.dart';
import 'package:app1/pages/login_page.dart';
import 'package:app1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily:GoogleFonts.lato().fontFamily,
      primaryTextTheme:GoogleFonts.lateefTextTheme()
       ),
       debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute:  MyRoutes.homenRoute,
      routes: {
        "/": (context) => LoginPage(),
         MyRoutes.homenRoute:(context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
