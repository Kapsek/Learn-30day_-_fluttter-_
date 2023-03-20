import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        focusColor: Colors.white,

        child:Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover
            ,),

          SizedBox(
                height: 20.0,
             ),

            Text("welcome",
            style: TextStyle(fontSize: 24,
            fontWeight: FontWeight.bold,
            ),
           
            ),
             SizedBox(
                height: 20.0,
             ),
             
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [ TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UsreName",
                  labelText: "Username", 
                ),
               ),
               TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password", 
                ),
               ),
                  SizedBox(
              height: 20.0,
             ),

                   ElevatedButton(onPressed: (){
                      print("Hi codepur");
                       }, child: Text("Login"),
                           style: TextButton.styleFrom(),
                           ),
             ] ,
            )
            )
          ],
        
      )
        )
      );
    
  }
}
