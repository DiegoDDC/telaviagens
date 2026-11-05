import 'package:flutter/material.dart';

// Ícone em cima e texto embaixo
class BotaoAcao extends StatelessWidget {
  final IconData icone;
  final String texto;

  BotaoAcao(this.icone, this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, color: Colors.blue),
        Text(texto, style: TextStyle(color: Colors.blue, fontSize: 12)),
      ],
    );
  }
}
