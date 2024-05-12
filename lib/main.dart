// ignore_for_file: prefer_const_constructors

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:puc/firebase_options.dart';
import 'package:puc/pages/signup.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
// Initialize Firebase
await FirebaseMessaging.instance.subscribeToTopic("Sample");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PUC REMINDER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LOGIN(),
    );
  }
}
