import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'Perfil.dart';

class BarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavBar.cont = 0;

    return Container(
        child: Stack(children: <Widget>[
      NavBar.WidgetFondo(),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text("Visualizacion"), actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Perfil()),
                );
              },
            )
          ]),
          body: ListView(
            children: <Widget>[
              for (int i = 0; i < 10000; i++)
                Container(
                    width: 308, height: 150, child: NavBar.WidgetNivelLista(i)),
            ],
          ),
          drawer: NavBar.drawer(context))
    ]));
  }
}
