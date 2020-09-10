import 'package:flutter/material.dart';

class Pergunta extends StatelessWidget {
  final String textoPergunta;

  Pergunta(this.textoPergunta);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Text(
        textoPergunta,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
