import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {

  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  int _contadorGrana = 0;

  void _mandaGrana(){
    setState(() { //salva os valores e atualiza a tela
      _contadorGrana = _contadorGrana + 100;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.teal,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Center(
              child: Text("Fique Rico",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
                fontSize: 29.9
              ),
              ),
            ),

            Expanded(child: Center(
              child: Text(" \R\$ $_contadorGrana",
              style: TextStyle(
                fontSize: 45.6,
                color: Colors.orange,
                fontWeight: FontWeight.w700
              ), ),
            )),
            Expanded(child: Center(
              child: FlatButton(onPressed: _mandaGrana,
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: Text("Mais grana",
                  style: TextStyle(fontSize: 19.9),
                  )),
            ))

          ],
        ),
      ),
    );
  }
}

