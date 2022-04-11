import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Color.fromARGB(255, 255, 255, 255),
          primary: Color.fromARGB(255, 138, 188, 229),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
