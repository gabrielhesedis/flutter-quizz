import 'package:flutter/material.dart';

import './quiz.dart';
import './resultado.dart';

void main() {
  runApp(QuizMatematico());
}

class QuizMatematico extends StatefulWidget {
  @override
  _QuizMatematicoState createState() => _QuizMatematicoState();
}

class _QuizMatematicoState extends State<QuizMatematico> {
  var perguntas = [
    {
      "textoPergunta": "🍎🍎 + 🍊🍊 = ?",
      "respostas": [
        {"texto": "6 frutas", "correto": false},
        {"texto": "4 frutas", "correto": true},
        {"texto": "8 frutas", "correto": false},
      ]
    },
    {
      "textoPergunta": "🐱🐱🐱 - 🐶 + 🦆 = ?",
      "respostas": [
        {"texto": "3 animais", "correto": true},
        {"texto": "5 animais", "correto": false},
        {"texto": "15 animais", "correto": false},
      ]
    },
    {
      "textoPergunta": "🍺🍺🍺🍺 x 🍺🍺 = ?",
      "respostas": [
        {"texto": "16 cervejas", "correto": false},
        {"texto": "6 cervejas", "correto": false},
        {"texto": "8 cervejas", "correto": true},
      ]
    }
  ];

  var placar = 0;
  var indexPergunta = 0;

  void respondePergunta(bool correto) {
    setState(() {
      placar += correto ? 1 : 0;
      indexPergunta++;
    });

    print(placar);
  }

  void restartQuiz() {
    setState(() {
      placar = 0;
      indexPergunta = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz Matemático!"),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(12),
        child: indexPergunta < perguntas.length
            ? Quiz(
                perguntas: perguntas,
                indexPergunta: indexPergunta,
                respondePergunta: respondePergunta,
              )
            : Resultado(placar, restartQuiz),
      ),
    ));
  }
}
