import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController sampledata1 = new TextEditingController();
  TextEditingController sampledata2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: sampledata1,
              decoration: InputDecoration(hintText: 'sampledata1'),
            ),
            TextFormField(
              controller: sampledata2,
              decoration: InputDecoration(hintText: 'sampledata2'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () {
                  senddatatodb();
                },
                child: Text('add')),
          ],
        ),
      ),
    );
  }
}

Future<void> senddatatodb() async {
  var collection = await FirebaseFirestore.instance.collection('O-Quiz');

  var sampledata1;
  var sampledata2;
  Map<String, dynamic> quizMap = {
    'Field1': sampledata1.text, 'Field2': sampledata2.text

    // 'question': 'What is the capital of Bangladesh',
    // 'answerList': [
    //   {'answer': 'Berlin', 'iscorrect': false},
    //   {'answer': 'hongkong', 'iscorrect': false},
    //   {'answer': 'paris', 'iscorrect': false},
    //   {'answer': 'Dhaka', 'iscorrect': true}
    // ]
  };
  // var quizdata = {'question': 'What is the capital of france'};
  collection.add(quizMap);
}
