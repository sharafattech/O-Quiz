import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> addDatatoDB() async {
    var collection =
        await FirebaseFirestore.instance.collection('userinformation');
    collection.add(quizdata);
  }

  var quizdata = {'question': 'What is the capital of Bangladesh'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz App',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () {
                  addDatatoDB();
                },
                child: Text('add')),
          ],
        ),
      ),
    );
  }
}
