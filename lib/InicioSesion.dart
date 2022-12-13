import 'package:app/Bienvenida.dart';
import 'package:app/services/firebase_crud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Ventana1.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'Recuperar.dart';

class InicioSesion extends StatelessWidget {
  TextEditingController _correoE = TextEditingController();
  TextEditingController _contrasenia = TextEditingController();
  final Stream<QuerySnapshot> collectionReference =
      FirebaseCrud.IniciarSesion();

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      WidgetFondoSesion(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Container(
                child: FormularioInicio(context),
              ),
            ],
          )),
    ]);
  }

  FormularioInicio(BuildContext context) {
    // Figma Flutter Generator FormularioWidget - GROUP
    return SizedBox(
        width: 800,
        height: 700,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 150,
              left: 80,
              child: Text(
                'Iniciar sesión',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 145, 144, 144),
                    fontFamily: 'Amiko',
                    fontSize: 32,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          Positioned(
              top: 300,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller: _correoE,
                    decoration: const InputDecoration(
                      labelText: 'Correo electronico',
                      hintText: 'Ingresa tu correo electronico',
                    ),
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
              top: 350,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller: _contrasenia,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Ingresa tu contraseña',
                    ),
                    obscureText: true,
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
              top: 420,
              left: 110,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Recuperar()),
                  );
                },
                child: const Text(
                  "Olvidaste tu contraseña?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  selectionColor: Colors.blue,
                ),
              )),
          const Positioned(
              top: 370, left: 260, child: Icon(Icons.remove_red_eye)),
          Positioned(
              top: 500,
              left: 120,

              //----------------------------------Boton iniciar sesion---------------------------------
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(84, 113, 214, 1)),
                child: const Text(
                  'Iniciar Sesion',
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
              ))

          //----------------------------------Fin Boton iniciar sesion---------------------------------
        ]));
  }

  static WidgetFondoSesion() {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/Ndice1.png'), fit: BoxFit.cover),
    ));
  }
}
