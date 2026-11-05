import 'package:flutter/material.dart';

// Imagem com o texto sobreposto no canto inferior esquerdo
class FotoDestino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://commons.wikimedia.org/wiki/Special:FilePath/Colosseo_2020.jpg?width=800',
          webHtmlElementStrategy: WebHtmlElementStrategy.prefer,
          width: double.infinity,
          height: 220,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 12,
          bottom: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Roma', style: TextStyle(color: Colors.white, fontSize: 12)),
              Text('Coliseu',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
