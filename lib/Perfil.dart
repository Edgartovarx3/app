import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'funciones.dart';

class Perfil extends StatelessWidget {
  TextEditingController correoE = TextEditingController();
  TextEditingController contrasenia = TextEditingController();

  @override
  Widget build(BuildContext context) {
    funciones.CrearGenerico();
    return Container(
        child: Stack(children: <Widget>[
      Container(
          decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/Fondo.png'), fit: BoxFit.cover),
      )),
      Scaffold(
        backgroundColor: Colors.transparent,
        // drawer: NavBar.drawer(context),
        appBar: AppBar(
          title: Text("Perfil"),
        ),
        body: Container(
          child: TarjetaPerfil(context),
        ),
      )
    ]));
  }

  TarjetaPerfil(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          top: -6,
          left: -6,
          child: Container(
            width: 373,
            height: 811,
          )),
      Positioned(
          top: 50,
          left: 45,
          child: Container(
              width: 299,
              height: 612,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 299,
                        height: 612,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(53),
                            topRight: Radius.circular(53),
                            bottomLeft: Radius.circular(53),
                            bottomRight: Radius.circular(53),
                          ),
                          color: Color.fromRGBO(107, 170, 190, 1),
                        ))),
                Positioned(
                    top: 24,
                    left: 64,
                    child: Container(
                        width: 173,
                        height: 173,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/Ellipse18.png'),
                              fit: BoxFit.fitWidth),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(173, 173)),
                        ))),
                Positioned(
                    top: 243,
                    left: 45,
                    child: Text(
                      funciones().getNombre(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                          fontSize: 24,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Positioned(
                    top: 306,
                    left: 46,
                    child: Text(
                      funciones().getApellidos(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Positioned(
                    top: 369,
                    left: 15,
                    child: Text(
                      funciones().getCorreo(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Positioned(
                    top: 435,
                    left: 15,
                    child: Text(
                      funciones().getCorreoConf(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                const Positioned(
                    top: 502,
                    left: 15,
                    child: Text(
                      '000 000 000 000',
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
                    top: 563,
                    left: 100,
                    child: Container(
                        width: 92,
                        height: 34,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: -6,
                              left: 8,
                              child: ElevatedButton(
                                onPressed: () {
                                  //Navigator.push(
                                  // context,
                                  // MaterialPageRoute(builder: (context) => BarWidget()),
                                  //);
                                  //
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(84, 113, 214, 1)),
                                child: const Text(
                                  'Editar',
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
              ]))),
    ]));
  }
}
