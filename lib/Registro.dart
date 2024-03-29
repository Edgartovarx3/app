import 'NavBar.dart';
import 'funciones.dart';

import 'Ventana1.dart';
import 'package:flutter/material.dart';
import 'InicioSesion.dart';

class Registro extends StatelessWidget {
  final _CorreoE = TextEditingController();
  final _Contrasenia = TextEditingController();
  final _Nombre = TextEditingController();
  final Apellidos = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // funciones.CrearGenerico;
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
