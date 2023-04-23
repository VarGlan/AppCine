 import 'package:flutter/material.dart';
import 'package:myapp/wpInicio/inicio.dart';

void main() {
  runApp(const AppCine());
}

class AppCine extends StatelessWidget {
  const AppCine({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Widget principal que manda a llamar a la pagina de inicio
      home: paginaInicio(
      )
    );
  }
}
