import 'package:flutter/material.dart';
import 'package:flutter_july_16/dummy_db.dart';
import 'package:flutter_july_16/view/home_screen/home_screen.dart';

class ReslutScreen extends StatelessWidget {
  const ReslutScreen({super.key, this.rightAnswerCount = 0});

  final int rightAnswerCount;

  @override
  Widget build(BuildContext context) {
    double percentage = rightAnswerCount * 100 / DummyDb.questions.length;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("$percentage %"),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text("Restart"))
          ],
        ),
      ),
    );
  }
}
