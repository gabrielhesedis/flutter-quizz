import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoResposta;
  final Function selecionaResposta;

  Resposta(this.textoResposta, this.selecionaResposta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          textoResposta,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        color: Colors.cyan[300],
        textColor: Colors.white,
        onPressed: selecionaResposta,
      ),
    );
  }
}
