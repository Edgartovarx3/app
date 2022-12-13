import 'package:app/Config.dart';
import 'package:app/InicioSesion.dart';
import 'package:app/Ventana1.dart';
import 'package:app/services/firebase_crud.dart';
import 'package:flutter/material.dart';
import 'Ventana2.dart';
import 'Registro.dart';
import 'funciones.dart';

class NavBar extends StatelessWidget {
  final _Nombre = TextEditingController();
  final _Apellidos = TextEditingController();
  final _Contrasenia = TextEditingController();
  final _CorreoE = TextEditingController();
  final _CorreoE2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            child: Stack(children: <Widget>[
      WidgetFondo(),
    ])));
  }

// ignore: non_constant_identifier_names
  static WidgetFondo() {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/Fondo.png'), fit: BoxFit.cover),
    ));
  }

// ignore: non_constant_identifier_names
  IdiomasWidget(BuildContext context, String Titulo) {
    // Figma Flutter Generator Idioma3Widget - GROUP
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          top: 100,
          left: 20,
          child: Container(
              width: 333,
              height: 212,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(233, 233, 233, 1),
              ))),
      Positioned(
          top: 104,
          left: 30,
          child: Container(
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
      Positioned(
          top: 110,
          left: 156,
          child: Text(
            Titulo,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Amiko',
                fontSize: 20,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          )),
      const Positioned(
          top: 150,
          left: 156,
          child: Text(
            'Descripcion',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontFamily: 'Amiko',
                fontSize: 16,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          )),
      Positioned(
          top: 250,
          left: 136,
          child: Container(
              width: 197,
              height: 41,
              child: Stack(children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 197,
                    height: 41,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      color: Color.fromRGBO(84, 113, 214, 1),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BarWidget()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(84, 113, 214, 1)),
                      child: const Text(
                        'Suscribirse',
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
                    ),
                  ),
                ),
              ]))),
    ]));
  }

  static drawer(BuildContext context) {
    return Container(
        width: 250,
        child: Stack(children: <Widget>[
          Positioned(
              child: Drawer(
            backgroundColor: Color.fromARGB(92, 180, 169, 169),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(92, 180, 169, 169),
                  ),
                  child: Text('Menú'),
                ),
                ListTile(
                  title: const Text('Inicio'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ventana1()));
                  },
                ),
                ListTile(
                  title: const Text('Configuración'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Config()));
                  },
                ),
              ],
            ),
          ))
        ]));
  }

// ignore: non_constant_identifier_names
  static WidgetNivelLista(int niveles) {
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          top: 50,
          left: 50,
          child: Container(
              width: 310,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(-6, 9),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(217, 217, 217, 1),
              ))),
      Positioned(
          top: 56,
          left: 57,
          child: Text(
            'Nivel ' + (niveles + 1).toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Amiko',
                fontSize: 20,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          )),
    ]));
  }

  // ignore: non_constant_identifier_names
  static ModelConfig(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          top: 50,
          left: 28,
          child: Container(
              width: 330,
              height: 500,
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

  static double cont = 0;
  static Butons(BuildContext context, String ConfigText) {
    cont++;

    if (cont == Config().Configtext.length) {
      cont == 0;
    }
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          top: 55 * cont,
          left: 32,
          child: Container(
            width: 320,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BarWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(228, 255, 255, 255)),
              child: Text(
                ConfigText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color.fromARGB(255, 170, 0, 0),
                    fontFamily: 'Amiko',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
          ))
    ]));
  }

  FormularioRegistro(BuildContext context) {
    // Figma Flutter Generator CrearcuentaWidget - GROUP
    return Container(
        width: 1200,
        height: 800,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 150,
              left: 100,
              child: Text(
                'Crear Cuenta',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Amiko',
                    fontSize: 32,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 525,
              left: 150,
              child: Text(
                'ó',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Inter',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 600,
              left: 82,
              child: Container(
                  width: 197,
                  height: 62,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 500,
                        left: 50,
                        child: Container(
                            width: 197,
                            height: 62,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                              color: Color.fromRGBO(
                                  255, 255, 255, 0.36000001430511475),
                            ))),
                    const Positioned(
                        top: 200, left: 150, child: Icon(Icons.facebook)),
                    const Positioned(
                        top: 200, left: 190, child: Icon(Icons.facebook)),
                    const Positioned(
                        top: 200, left: 170, child: Icon(Icons.facebook)),
                  ]))),
          Positioned(
              top: 507,
              left: 37,
              child: Container(
                  width: 600,
                  height: 100,
                  child: Stack(children: const <Widget>[
                    //  Positioned(top: 0, left: 0, child: Icon(Icons.facebook)),
                  ]))),
          Positioned(
              top: 74,
              left: 12,
              child: Container(
                  width: 1200,
                  height: 800,
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 20,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
                    const Positioned(
                        top: 91,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
                    const Positioned(
                        top: 162,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
                    const Positioned(
                        top: 121,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
                    const Positioned(
                        top: 55,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
                    Positioned(
                        top: 350,
                        left: 60,
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(200, 50)),
                            child: TextFormField(
                              controller: _CorreoE2,
                              decoration: const InputDecoration(
                                labelText: 'Confirma el correo electronico',
                                hintText:
                                    'Vuelve a ingresar tu correo electronico',
                              ),
                              onSaved: (String? confirmacion) {
                                funciones()
                                    .SetConfirmCorreo(confirmacion.toString());
                              },
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
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
                        top: 310,
                        left: 60,
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(200, 50)),
                            child: TextFormField(
                              controller: _CorreoE,
                              decoration: const InputDecoration(
                                labelText: 'Correo electronico',
                                hintText: 'Ingresa tu correo electronico',
                              ),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
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
                        top: 390,
                        left: 60,
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(200, 50)),
                            child: TextFormField(
                              controller: _Contrasenia,
                              decoration: const InputDecoration(
                                labelText: 'Contraseña',
                                hintText: 'Escribe la contraseña',
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
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
                        top: 115,
                        left: 0,
                        child: Container(
                            width: 800,
                            height: 600,
                            child: Stack(children: const <Widget>[
                              Positioned(
                                  top: 295,
                                  left: 230,
                                  child: Icon(Icons.remove_red_eye_outlined)),
                            ]))),
                    Positioned(
                        top: 210,
                        left: 60,
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(200, 50)),
                            child: TextFormField(
                              controller: _Nombre,
                              decoration: const InputDecoration(
                                labelText: 'Nombre',
                                hintText: 'Ingresa el nombre',
                              ),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
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
                        top: 260,
                        left: 60,
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(200, 50)),
                            child: TextFormField(
                              controller: _Apellidos,
                              decoration: const InputDecoration(
                                labelText: 'Apellidos',
                                hintText: 'Ingresa tus apellidos',
                              ),
                              // ignore: non_constant_identifier_names

                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
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
                        top: 480,
                        left: 110,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_Nombre.text.isNotEmpty &&
                                _Apellidos.text.isNotEmpty &&
                                _CorreoE.text.isNotEmpty &&
                                _CorreoE2.text.isNotEmpty &&
                                _Contrasenia.text.isNotEmpty) {
                              if (_CorreoE.text.toString() ==
                                  _CorreoE2.text.toString()) {
                                var response = await FirebaseCrud.addRegistro(
                                    Nombre: _Nombre.text,
                                    Apellidos: _Apellidos.text,
                                    Contrasenia: _Contrasenia.text,
                                    CorreoE: _CorreoE.text);

                                if (response.code != 200) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content:
                                              Text(response.message.toString()),
                                        );
                                      });
                                } else {
                                  //este es cuando se logro hacer la insersionde bd
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content:
                                              Text(response.message.toString()),
                                        );
                                      });
                                  funciones().Persona(_Nombre.text, _Apellidos.text, _CorreoE.text,
                                      _CorreoE2.text, _Contrasenia.text);
                                  Future.delayed(
                                      const Duration(seconds: 3),
                                      () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Ventana1()),
                                          ));
                                }
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        content:
                                            Text("Los correos no coindicen"),
                                      );
                                    });
                              }
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialog(
                                      content:
                                          Text("Algunos campos estan vacio!"),
                                    );
                                  });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(84, 113, 214, 1)),
                          child: const Text(
                            'Registrarme',
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

  Bienvenida(BuildContext context) {
    return Container(
        width: 1200,
        height: 800,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 150,
              left: 100,
              child: Text(
                'Bienvenido',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Amiko',
                    fontSize: 32,
                    letterSpacing:
                        5 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),

          Positioned(
              top: 400,
              left: 135,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registro()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(84, 113, 214, 1)),
                child: const Text(
                  'Registrarme',
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

//Boton 1 y 2

          Positioned(
              top: 325,
              left: 130,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InicioSesion()),
                  );
                },
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
              )),
        ]));
  }
}

//fLutter  pub get -Obtener paquetes
//flutter run -ejecuta el proyecto
//flutter git clone - clonar repositorio
//
