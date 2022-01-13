import "package:flutter/material.dart";

import "./question.dart";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
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
            // Question Field
            Question(questions[_questionIndex]),
            // Answers
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('answer'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('answer'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer'),
            ),
          ],
        ),
      ),
    );
  }
}
