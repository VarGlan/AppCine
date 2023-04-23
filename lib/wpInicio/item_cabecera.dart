import 'package:flutter/material.dart';
import 'package:myapp/componentes/navbar_sup.dart';

class CabeceraInicial extends StatelessWidget{
  const CabeceraInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //mandamos  a llamar a las funciones
        header(),
        Titulo()
      ],
    );
  }

//Funcion cabecera
  Widget header () {
    return Stack( //Encajamos todo en una pila
        children: [ //hijos
          Image.asset(
              'assets/img/portada2.jpg', fit: BoxFit.cover //Insertar imagen
          ),
          Container(
            width: double.infinity, //esta propiedad abarca todo el ancho
            height: 440, //establecido conforme a la imagen
            decoration: const BoxDecoration( //Llama a la clase boxdecoration
                gradient: LinearGradient( //propiedad de degradado lineal
                  begin: Alignment.center, //propiedad para que inicie en el centro
                  end: Alignment.bottomCenter, //propiedad para que finalice bajo el centro y termine abajo
                  colors: <Color>[ //Colores del degradado
                    Colors.black26, //negro bajo
                    Colors.black
                  ],
                )
            ),
          ),
          const SafeArea(child: navbarSuperior()), //bajar el navBar
        ]
    );
  }

//Esta funcion muestra una imagen con el titulo
  Widget Titulo (){
    return Row( //regresa una fila
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/img/micine.png', //Insertar imagen
            width: 130),
      ],
    );
  }
}

