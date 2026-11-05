import 'package:flutter/material.dart';
import 'botao_acao.dart';
import 'pessoa.dart';

// Tela de perfil: cabeçalho, botões, biografia e fotos
class TelaPerfil extends StatelessWidget {
  final Pessoa pessoa;

  TelaPerfil(this.pessoa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Perfil', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho com o nome sobreposto no canto inferior esquerdo
            Container(
              width: double.infinity,
              height: 220,
              color: Colors.blue[300],
              child: Stack(
                children: [
                  Center(
                    child: Icon(Icons.person, size: 100, color: Colors.white),
                  ),
                  Positioned(
                    left: 12,
                    bottom: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pessoa.cidade,
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text(pessoa.nome,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BotaoAcao(Icons.person_add, 'Seguir'),
                BotaoAcao(Icons.chat, 'Mensagem'),
                BotaoAcao(Icons.share, 'Compartilhar'),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                pessoa.bio,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 12),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Fotos',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 12),

            // 6 quadrados representando as fotos
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (var i = 0; i < 6; i++)
                    Container(
                      width: 90,
                      height: 90,
                      color: Colors.grey[300],
                      child: Icon(Icons.photo, color: Colors.grey),
                    ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
