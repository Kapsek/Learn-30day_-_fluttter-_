import 'package:app1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
            onTap: () {
              setState(() {
                changeButton = true; 
              });
              // Navigator.pop(context);
            },
            focusColor: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login_image.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter UsreName",
                            labelText: "Username",
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        InkWell(
                          onTap: () async {
                            setState(() {
                              changeButton = true;
                            });
                              FutureBuilder(
                                 
                                 builder: (BuildContext context, AsyncSnapshot snapshot) {
                                   return Container();
                                   },
                                );
                                await Future.delayed(Duration(seconds:1));
                                
                             ///onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homenRoute);
                            // },
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                            ?
                            Icon(Icons.done,color:
                             Colors.white,):
                            Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                               // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(changeButton ? 50:8)),
                          ),
                        ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homenRoute);
                        //   },
                        //   child: Text("Login"),
                        //   style:
                        //       TextButton.styleFrom(minimumSize: Size(150, 40)),
                        // ),
                        
                      ]
                      ,

                    ),
                  ),
                ],
              ),
            )));
  }
}
