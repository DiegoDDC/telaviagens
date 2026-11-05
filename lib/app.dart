import 'package:flutter/material.dart';
import 'tela_viagens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaViagens(),
    );
  }
}
