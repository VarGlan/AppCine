import 'package:flutter/material.dart';
import 'package:myapp/info_series/the_crown.dart';

//Aqui hacemos  un row que contiene las imagenes de
// la lista de las series en la pantalla principal
class Series extends StatelessWidget {
  const Series({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( //fila
      children:[ //hijos
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GestureDetector(//el widget gesture detector es para navegar a traves de la imagen
            child: Image.asset('assets/img/the_crown.png'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> InfoThecrown()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0),
          child: GestureDetector(//el widget gesture detector es para navegar a traves de la imagen
            child: Image.asset('assets/img/miercoles.png'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> InfoThecrown()));
            },
          ),
        ),

        SizedBox(height: 15, width: 15),
        Image.asset('assets/img/miercoles.png'),
        SizedBox(height: 15, width: 15),
        Image.asset('assets/img/el_valle_olvidado.png'),
        SizedBox(height: 15, width: 15),
        Image.asset('assets/img/curso_intensivo_de_amor.png'),
        SizedBox(height: 15, width: 15),
        Image.asset('assets/img/Daredevil.png'),
        SizedBox(height: 15, width: 15),
        Image.asset('assets/img/el_imperio_de_los_chimpances.png')
      ],
    );
  }
}