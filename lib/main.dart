import "package:flutter/material.dart";

import "./quiz.dart";
import "./result.dart";

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
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // handles the answering of a question
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  //question list
  static const _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {"text": "Blue", "score": 10},
        {"text": "Red", "score": 8},
        {"text": "Green", "score": 5},
        {"text": "Yellow", "score": 1}
      ]
    },
    {
      'questionText': "What's your favorite food?",
      'answers': [
        {"text": "Sushi", "score": 10},
        {"text": "Ice Cream", "score": 8},
        {"text": "Pizza", "score": 5},
        {"text": "Lasagna", "score": 1}
      ]
    },
    {
      'questionText': "What's your favorite sport?",
      'answers': [
        {"text": "Baseball", "score": 10},
        {"text": "Football", "score": 8},
        {"text": "Hockey", "score": 5},
        {"text": "Soccer", "score": 1}
      ]
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
