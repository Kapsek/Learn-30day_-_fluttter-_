import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageUrl ="https://avatars.githubusercontent.com/u/12619420?v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader
              (margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent
              ),
                accountName: Text("Pawan Kumar"),
                 accountEmail: Text("krishnakapse10@gamil.com"),
                 currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                 ),
                 ),   
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,
                  color: Colors.white,
                  ),
                  title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
                 ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
                  title: Text("Prfile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
                 ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                  color: Colors.white,
                  ),
                  title: 
                  Text("Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                )

          ],
        ),
      ),
    );
  }
}
