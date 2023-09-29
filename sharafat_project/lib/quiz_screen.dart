// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sharafat_project/all_quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int quizIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                allQuiz[quizIndex].question,
                textScaleFactor: 1.2,
              ),
              Column(
                children: [
                  SizedBox(height: 50),
                  for (Answer answer in allQuiz[quizIndex].answerList)
                    AnswerWidget(quizOption: answer.answer)
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      quizIndex++;
                    });
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  final String quizOption;
  const AnswerWidget({Key? key, required this.quizOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 200,
        // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(quizOption),
      ),
    );
  }
}
