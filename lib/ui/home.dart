import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Text("WiManager"),
        actions: <Widget>[
          IconButton (icon: new Icon(Icons.list), iconSize: 25.0,onPressed: () => debugPrint("Voce Clicou")),
          IconButton (icon: new Icon(Icons.assessment),iconSize: 25.0, onPressed: () => debugPrint("Voce Clicou")), // onPressed:() => "comando"
          IconButton (icon: new Icon(Icons.timeline), iconSize: 25.0, onPressed: () => debugPrint("Voce Clicou"))
        ],
      ),

      backgroundColor: Colors.white,
      body: new Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Wibi",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.teal
              ),
            )

          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(items: [// Barra inferior
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
            title: Text("Texto 1")),
        BottomNavigationBarItem(icon: Icon(Icons.accessibility), 
            title: Text("texto 2"))
      ]),

      floatingActionButton: FloatingActionButton( // botão flutuante
          onPressed: null,
          child: Icon(Icons.add),
          backgroundColor: Colors.teal,

      ),
  //        backgroundColor: Colors.teal
    );
  }
}
