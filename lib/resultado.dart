import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int placarFinal;
  final Function reiniciarQuiz;

  Resultado(this.placarFinal, this.reiniciarQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "O quiz acabou!\nVocê fez $placarFinal pontos",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text("Recomeçar o Quiz"),
          onPressed: reiniciarQuiz,
          textColor: Colors.cyan,
        )
      ]),
    );
  }
}
