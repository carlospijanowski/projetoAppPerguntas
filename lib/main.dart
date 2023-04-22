import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  Widget build(BuildContext) {
    const List<String> perguntasList = [
      'Qual a sua cor favorita?',
      'Qual seu animal favorito?'
    ];

    void responder() {
      perguntaSelecionada++;
      print('cliquei ${perguntaSelecionada}');
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: [
                Text(perguntasList[0]),
                ElevatedButton(
                  child: Text('Resposta 1'),
                  onPressed: responder,
                )
              ],
            )));
  }
}

