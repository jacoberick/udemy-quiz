import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  const Answer(this.selectHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue[800]),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: selectHandler,
        child: const Text('Answer'),
      ),
    );
  }
}
