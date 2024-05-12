// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puc/pages/firebaseauth.dart';
import 'package:puc/pages/puc.dart';


class LOGIN extends StatefulWidget {
  const LOGIN({super.key});

  @override
  State<LOGIN> createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
    final FirebaseAuthService _auth = FirebaseAuthService();

  
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {

    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PUC REMINDER"),
          backgroundColor: Colors.blue,

        ),
        body:Column(
          children: [
                Center(child: Image.asset('assets/test.png',width: 500,height: 200,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                               border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                               ),
                              
                              labelText: 'Username',
                              
                            ),
                              controller: _emailController,
                              
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                            decoration: InputDecoration(
                              
                              icon: Icon(Icons.password),
                               border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                               ),
                               
                              labelText: "Password",
                            ),
                            controller: _passwordController,
                          ),
                ),

                SizedBox(height: 20,),

             FloatingActionButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DateTimeExample()));
             },
             child: Icon(Icons.login),
             

             )
                        ],
                          
                      
        ),
        
        
      ),
       
    );
  }

 void _signUp() async {

setState(() {
  isSigningUp = true;
});

    
    String email = _emailController.text;
    String password = _passwordController.text;

FirebaseAuthService _authService = FirebaseAuthService();

// Somewhere in your code, call the createUser method with email and password
await _authService.createUser(email, password);

setState(() {
  isSigningUp = false;
});
   
    }
  }
