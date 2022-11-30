import 'package:app/NavBar.dart';
import 'package:app/funciones.dart';

import 'Ventana1.dart';
import 'package:flutter/material.dart';
import 'InicioSesion.dart';

class Registro extends StatelessWidget {
  TextEditingController correoE = TextEditingController();
  TextEditingController contrasenia = TextEditingController();

  @override
  Widget build(BuildContext context) {
    funciones.CrearGenerico;
    return Container(
        child: Stack(children: <Widget>[
      InicioSesion.WidgetFondoSesion(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              child: Stack(
            children: <Widget>[
              Container(
                child: NavBar().FormularioRegistro(context),
              ),
            ],
          ))),
    ]));
  }
}
