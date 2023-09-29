import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sharafat_project/quiz_screen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Text(
                    'Quiz App',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.network(
                      'https://static.vecteezy.com/system/resources/thumbnails/007/343/548/small/memphis-style-yellow-quiz-time-banner-design-for-promotion-vector.jpg'),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizScreen(),
                            ));
                      },
                      child: Text('Start Quiz'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
