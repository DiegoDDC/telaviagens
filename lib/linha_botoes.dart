import 'package:flutter/material.dart';
import 'botao_acao.dart';

// Linha com os 4 botões: Quero ir, Já fui, Compartilhar e Avaliações
class LinhaBotoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BotaoAcao(Icons.place, 'Quero ir'),
        BotaoAcao(Icons.check_circle_outline, 'Já fui'),
        BotaoAcao(Icons.share, 'Compartilhar'),
        Column(
          children: [
            Row(
              children: [
                Icon(Icons.star, color: Colors.blue, size: 18),
                Icon(Icons.star, color: Colors.blue, size: 18),
                Icon(Icons.star, color: Colors.blue, size: 18),
              ],
            ),
            Text('Avaliações',
                style: TextStyle(color: Colors.blue, fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
