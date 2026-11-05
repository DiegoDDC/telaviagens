import 'package:flutter/material.dart';
import 'avatar_pessoa.dart';
import 'botao_acao.dart';
import 'pessoa.dart';

// Título da seção com o Filtrar à direita e a linha de avatares
class PessoasEncontradas extends StatelessWidget {
  final List<Pessoa> pessoas = [
    Pessoa('Ana', 'Recife, Brasil',
        'Adora viajar de mochila e já conheceu mais de 15 países. Gosta de museus, trilhas e comida local.'),
    Pessoa('Bruno', 'João Pessoa, Brasil',
        'Fotógrafo amador que viaja atrás de paisagens. Está planejando uma viagem pela Europa.'),
    Pessoa('Carla', 'Lisboa, Portugal',
        'Guia turística nas horas vagas. Conhece bem a história de Roma e já visitou o Coliseu três vezes.'),
    Pessoa('Lucas', 'São Paulo, Brasil',
        'Viaja a trabalho e aproveita os dias livres para explorar a cidade. Curte viagens de curta duração.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pessoas Encontradas',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              BotaoAcao(Icons.filter_alt, 'Filtrar'),
            ],
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var p in pessoas) AvatarPessoa(p),
          ],
        ),
      ],
    );
  }
}
