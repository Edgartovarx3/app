import 'package:flutter/material.dart';
import 'NavBar.dart';

class Config extends StatelessWidget {
  @override
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
          body:
              //Cambiar datos
              Container(
                  width: 96,
                  height: 72,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ))),
    ]));
  }
}
