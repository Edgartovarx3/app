import 'package:app/Bienvenida.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'funciones.dart';
import 'InicioSesion.dart';

class Recuperar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      InicioSesion.WidgetFondoSesion(),
      Scaffold(
        backgroundColor: Colors.transparent,
        // drawer: NavBar.drawer(context),
        body: Container(
          child: formulariorecuperacion(context),
        ),
      )
    ]));
  }

  formulariorecuperacion(BuildContext context) {
    return Container(
        width: 600,
        height: 600,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 100,
              left: 80,
              child: Text(
                'Recuperar contraseña',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Inter',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 210,
              left: 90,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Escribe el correo electronico',
                      hintText: 'Escribe el correo electronico',
                    ),
                    onSaved: (String? confirmacion) {
                      funciones().SetConfirmCorreo(confirmacion.toString());
                    },
                    validator: (String? value) {
                      return (value != null) ? 'Do not use the @ char.' : null;
                    },
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
          Positioned(
              top: 270,
              left: 130,
              child: Container(
                  width: 120,
                  height: 60,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 8,
                        left: 10,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bienvenida()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(84, 113, 214, 1)),
                          child: const Text(
                            'Enviar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Amiko',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        )),
                  ]))),
        ]));
  }
}
