import 'package:app/Bienvenida.dart';
import 'package:app/Ventana1.dart';
import 'package:flutter/material.dart';
import 'Bienvenida.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Inicio',
    home: Bienvenida(),
  ));
}
