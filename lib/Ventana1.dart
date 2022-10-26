import 'package:app/Ventana2.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'Ventana2.dart';

class Ventana1 extends StatelessWidget {
  @override
  String title = "Cursos";

  List<String> Cursos = ["Japonés", "Inglés", "Francés", "Español"];
  Widget build(BuildContext context) {
    NavBar.cont = 0;
    return Container(
        child: Stack(children: <Widget>[
      NavBar.WidgetFondo(),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text(title), actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            )
          ]),
          body: ListView(
            children: <Widget>[
              for (int i = 0; i < Cursos.length; i++)
               Container(
                    width: 350.0,
                    height: 350.0,
                    child: NavBar().IdiomasWidget(context, Cursos[i])),

              // NavBar.WidgetNavBar(context)
            ],
          ),
          drawer: NavBar.drawer(context))
    ]));
  }
}
