import 'NavBar.dart';
import 'package:flutter/material.dart';
import 'InicioSesion.dart';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      InicioSesion.WidgetFondoSesion(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              child: Stack(
            children: <Widget>[
              Container(
                child: NavBar().Bienvenida(context),
              ),
            ],
          ))),
    ]));
  }
}
