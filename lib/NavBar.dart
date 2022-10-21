import 'package:app/Config.dart';
import 'package:app/Ventana1.dart';
import 'package:flutter/material.dart';
import 'Ventana2.dart';
import 'Config.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            child: Stack(children: <Widget>[
      WidgetFondo(),
    ])));
  }

  static WidgetFondo() {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/Fondo.png'), fit: BoxFit.cover),
    ));
  }

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
                      child: Text(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BarWidget()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(84, 113, 214, 1)),
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

  static WidgetNivelLista(int niveles) {
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          top: 50,
          left: 50,
          child: Container(
              width: 310,
              height: 150,
              decoration: BoxDecoration(
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
            style: TextStyle(
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
              child: Text(
                ConfigText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 170, 0, 0),
                    fontFamily: 'Amiko',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BarWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(228, 255, 255, 255)),
            ),
          ))
    ]));
  }
}
