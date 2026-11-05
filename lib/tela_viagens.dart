import 'package:flutter/material.dart';
import 'foto_destino.dart';
import 'linha_botoes.dart';
import 'pessoas_encontradas.dart';

class TelaViagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Viagens', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FotoDestino(),
            SizedBox(height: 12),
            LinhaBotoes(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Fusce id diam id ligula ultricies pulvinar. In neque lectus, '
                'sagittis eu libero et, venenatis lacinia nulla. Etiam eget '
                'purus leo. Nam consectetur ornare est eu lobortis. Morbi eu '
                'augue eu lectus condimentum vestibulum.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 12),
              ),
            ),
            PessoasEncontradas(),
          ],
        ),
      ),
    );
  }
}
