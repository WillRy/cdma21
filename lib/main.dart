import 'package:exercicio_02/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _tarefas = ['Estudar'];

  final myController = TextEditingController();

  void _adicionaTarefa() {
    setState(() {
      _tarefas.add(myController.text);
      myController.clear();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('CDM - Tarefa A2.1'))),
        body: Column(children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: myController,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Center(
              child: RaisedButton(
                  onPressed: _adicionaTarefa,
                  child: Text(
                    'Inserir tarefa',
                    style: TextStyle(fontSize: 22),
                  )),
            ),
          ),
          Container(
            child: Expanded(
              // child: ListaTarefas(tarefas: _tarefas),
              child: Lista(_tarefas),
            ),
          ),
        ]),
      ),
    );
  }
}
