import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List questions;
  final Function answerQuestion;
  final int questionIndex;
  // ignore: use_key_in_widget_constructors
  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Question Field
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        // Answers Map
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(
            () => answerQuestion(a['score']),
            a['text'] as String,
          );
        }),
      ],
    );
  }
}
