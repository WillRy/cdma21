import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  final List<String> tarefas;
  
  Lista(this.tarefas);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(
        children: tarefas
            .map(
              (element) => Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      child: Text(
                        element,
                        style: TextStyle(fontSize: 18),
                      ),
                      padding: EdgeInsets.all(5.0),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
