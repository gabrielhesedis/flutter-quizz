import 'package:flutter/material.dart';

import './resposta.dart';
import './pergunta.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int indexPergunta;
  final Function respondePergunta;

  Quiz(
      {@required this.perguntas,
      @required this.respondePergunta,
      @required this.indexPergunta});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pergunta(perguntas[indexPergunta]["textoPergunta"]),
        ...(perguntas[indexPergunta]["respostas"] as List<Map<String, Object>>)
            .map((resposta) {
          return Resposta(
              resposta["texto"], () => respondePergunta(resposta["correto"]));
        }).toList(),
      ],
    );
  }
}
