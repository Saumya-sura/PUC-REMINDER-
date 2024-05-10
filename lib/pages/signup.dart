// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puc/pages/PUC.dart';


class LOGIN extends StatelessWidget {
  const LOGIN({super.key});

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
                               
                              labelText: 'Password',
                              
                            ),
                          ),
                ),

                SizedBox(height: 20,),

             FloatingActionButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PUC()));
             },
             child: Icon(Icons.login),
             

             )
                        ],
                          
                      
        ),
        
        
      ),
       
    );
  }
}