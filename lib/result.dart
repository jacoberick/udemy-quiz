import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are so great, man!';
    } else if (resultScore <= 12) {
      resultText = "Eh, you're ok.";
    } else if (resultScore <= 16) {
      resultText = 'Yikes!';
    } else {
      resultText = "You're bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz'),
            style: TextButton.styleFrom(primary: Colors.lightBlue[800]),
          )
        ],
      ),
    );
  }
}
