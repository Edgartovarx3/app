import 'package:flutter/material.dart';
import 'NavBar.dart';

class BarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomeWidget - FRAME
    return Container(
        child: Stack(children: <Widget>[
      NavBar.WidgetFondo(),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text("Visualizacion"), actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                
              },
            )
          ]),
          body: ListView(
            children: <Widget>[
              for (int i = 0; i < 4; i++)
                Container(
                    width: 308, height: 150, child: NavBar.WidgetNivelLista(i)),
            ],
          ),
          drawer: NavBar.drawer(context))
    ]));
  }
}
