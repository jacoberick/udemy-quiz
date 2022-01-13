import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
  }

  //question list
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your favorite food?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Time'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('answer'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('answer'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer'),
            ),
          ],
        ),
      ),
    );
  }
}
