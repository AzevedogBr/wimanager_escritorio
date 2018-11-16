import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _usuarioController = new TextEditingController();
  final TextEditingController _senhaController = new TextEditingController();
  String _bemvindo = "";

  void _mostraBemvindo(){
    setState(() {
      if (_usuarioController.text.isNotEmpty &&
          _senhaController.text.isNotEmpty){
       // debugPrint(_senhaController.text);

        _bemvindo = 'Bem vindo, ${_usuarioController.text}';
      }else{
        _bemvindo = "Vazio";
      }

    });

  }


  void _cancelar(){
  setState(() {
    _usuarioController.clear();
    _senhaController.clear();
    _bemvindo = "";

  });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

//      appBar: AppBar(
//        title: Text("Cadastro"),
//        backgroundColor: Colors.teal,
//      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        //alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              width: 140.0,
              height: 140.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Wibi",
                  style: TextStyle(
                      fontSize: 20.0
                  ),

                )
              ],
            ),

             Container(
              width: double.infinity,
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: _usuarioController,
                      decoration: InputDecoration(
                          hintText: "Nome",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.5)),
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: _senhaController,
                      decoration: InputDecoration(
                          hintText: "Senha",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.5)),
                          icon: Icon(Icons.vpn_key)),
                      obscureText: true,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: RaisedButton(
                            onPressed: _mostraBemvindo,
                            child: Text("Enter"),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            onPressed: _cancelar,
                            child: Text("Cancelar"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("$_bemvindo",
                style: TextStyle(
                 fontSize: 20.0
                ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
