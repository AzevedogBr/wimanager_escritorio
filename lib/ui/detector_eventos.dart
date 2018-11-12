import 'package:flutter/material.dart';

class DetectorEventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detector"),
        backgroundColor: Colors.teal,
      ),
    body: new Center(
      child: new MeuBotao(),
    ),
    );
  }
}

class MeuBotao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
