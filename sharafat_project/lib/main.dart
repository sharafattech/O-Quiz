// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sharafat_project/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyBMwoNwAIJJ69zVcjcvLJWqT5YdvCypZ3g',
          appId: '1:765143424561:android:f4fcf120230f6e02b27f10',
          messagingSenderId: '765143424561',
          projectId: 'o-quiz-95118'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
