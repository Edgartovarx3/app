import 'package:flutter/material.dart';
import 'NavBar.dart';

class Config extends StatelessWidget {
  @override
  List<String> Configtext = ["Ajustes", "Configuración de la cuenta", "Ayuda"];
  int separacion = 10;
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      NavBar.WidgetFondo(),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text("Configuración"), actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          )
        ]),
        body: ListView(children: <Widget>[
          Container(
            child: Stack(children: <Widget>[
              Positioned(
                  child: Container(
                      width: 396,
                      height: 572,
                      child: NavBar.ModelConfig(context))),
              for (int i = 0; i < Configtext.length; i++)
                Positioned(
                    child: Container(
                  width: 386,
                  height: 562,
                  child: NavBar.Butons(context, Configtext[i]),
                ))
               
            ]),
          )
        ]),
        //Cambiar datos
      )
    ]));
  }
}
