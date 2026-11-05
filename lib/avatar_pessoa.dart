import 'package:flutter/material.dart';
import 'pessoa.dart';
import 'tela_perfil.dart';

// Avatar com o nome embaixo; ao tocar, abre a tela de perfil da pessoa
class AvatarPessoa extends StatelessWidget {
  final Pessoa pessoa;

  AvatarPessoa(this.pessoa);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaPerfil(pessoa)),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, color: Colors.grey),
          ),
          SizedBox(height: 4),
          Text(pessoa.nome, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
