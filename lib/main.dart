import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

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

  // handles the answering of a question
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  //question list
  static const questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': ["Blue", "Red", "Green", "Yellow"]
    },
    {
      'questionText': "What's your favorite food?",
      'answers': ["Sushi", "Pizza", "Lasagna", "Ice Cream"]
    },
    {
      'questionText': "What's your favorite sport?",
      'answers': ["Baseball", "Basketball", "Football", "Hockey"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Time'),
          backgroundColor: Colors.lightBlue[800],
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  // Question Field
                  Question(questions[_questionIndex]['questionText'] as String),
                  // Answers Map
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((a) {
                    return Answer(_answerQuestion, a);
                  }),
                ],
              )
            : const Center(
                child: Text('All done.'),
              ),
      ),
    );
  }
}
