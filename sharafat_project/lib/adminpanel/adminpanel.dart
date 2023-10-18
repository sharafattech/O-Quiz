// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sharafat_project/adminpanel/add_quizsheet_widget.dart';

class AdminPanelScreen extends StatelessWidget {
  const AdminPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Panel')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.amber.withOpacity(0),
                      context: context,
                      builder: (context) => AddQuizBottomSheetWidget());
                },
                child: Text('Add Quiz'))
          ],
        ),
      ),
    );
  }
}
