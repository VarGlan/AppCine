import 'package:flutter/material.dart';

//construyendo una barra de navegacion superior con icono
class navbarSuperior extends StatelessWidget{
  const navbarSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( //retornamos una fila
      mainAxisAlignment: MainAxisAlignment.spaceAround, //manipular la pocision horizontal
        children: <Widget>[ //hijos imagen y botones de texto
          Image.asset('assets/img/palomitas.png', //Insertar imagen
              width: 20.0),
           TextButton( //boton de textos
            child: //hijo widget de texto
            const Text('Estrenos', //se usa constante con el metodo constructor
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600), //font weight es el grosor
            ),
            onPressed: (){}, //por el momento no tiene funcionalidad
          ),
           TextButton(
            child:
            const Text('Documentales',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            onPressed: (){},
          ),
           TextButton(
            child:
            const Text('Categorias',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            onPressed: (){},
          ),
        ] ,
    );
  }
}
