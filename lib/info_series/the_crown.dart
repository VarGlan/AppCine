import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componentes/navbar_sup.dart';

class InfoThecrown extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            HeaderCrown(),
            NombreSerie(),
            InfoCorta(),
            VerPrograma(),
            DatosCrown()
          ],
        )
    );
  }

  Widget NombreSerie (){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const[
        Text("The Crown", textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0)
        ),
      ],
    );
  }

  Widget HeaderCrown (){
    return Stack(
        children: [
          Image.asset(
              'assets/img/infothecrown.png', fit: BoxFit.cover //Insertar imagen
          ),
          Container(
            width: double.infinity, //que abarcatodo el ancho
            height: 450,
            decoration: const BoxDecoration( //Llama a la clase boxdecoration
                gradient: LinearGradient( //propiedad de degradado
                  begin: Alignment.center,
                  //propiedad para que inicie en el centro
                  end: Alignment.bottomCenter,
                  //propiedad para que termine abajo
                  colors: <Color>[ //Colores del degradado
                    Colors.black26,
                    Colors.black
                  ],
                )
            ),
          ),
          const SafeArea(child: navbarSuperior()),
        ]
    );
  }

  Widget InfoCorta (){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[

          const Spacer(flex: 1),
          Text('2016',
              style: TextStyle
                (color: Colors.white, fontSize: 10.0)),
          const Spacer(flex: 1),//propiedad para separar texto
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0), //icono en medio de cada texto
          const Spacer(flex: 1),

          Text('Dramatica',
              style: TextStyle
                (color: Colors.white, fontSize: 10.0)),
          const Spacer(flex: 1),
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
          const Spacer(flex: 1),

          Text('5 temporadas',
              style: TextStyle
                (color: Colors.white, fontSize: 10.0)),
          const Spacer(flex: 1),
        ],
      ),
    );
  }

  Widget VerPrograma (){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            children:[
              TextButton.icon(
                onPressed: () { },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                ),
                //color: Colors.white,
                icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.black),
                label: const Text(""),
              ),
              Text('Ver Ahora', style: TextStyle(color: Colors.white, fontSize: 10.0)),
            ],
          ),

          Column(
            children:[
              TextButton.icon(
                onPressed: () { },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                ),
                //color: Colors.white,
                icon: const Icon(
                    Icons.check,
                    color: Colors.black),
                label: const Text(""),
              ),
              Text('Ya lo vi', style: TextStyle(color: Colors.white, fontSize: 10.0)),
            ],
          ),Column(
            children:[
              TextButton.icon(
                onPressed: () { },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white
                ),
                //color: Colors.white,
                icon: const Icon(
                    Icons.bookmark_border,
                    color: Colors.black),
                label: const Text(""),
              ),
              Text('Quiero Mirarlo', style: TextStyle(color: Colors.white, fontSize: 10.0)),
            ],
          ),
        ],
      ),
    );
  }

  Widget DatosCrown(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Text("Al 93% le gustó este programa de TV", textAlign: TextAlign.left,
                  style: TextStyle(
                  color: Colors.white38, fontWeight: FontWeight.bold, fontSize: 15.0)
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Text("Una crónica de la vida de la reina Isabel II de los años 40 a los tiempos modernos. A medida que pasan las décadas, se revelan intrigas personales, romances y rivalidades políticas.", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0)
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Text("Cantidad de temporadas: 5", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0)
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Text("Cantidad de episodios: 50", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0)
              ),
            ],
          ),
        ),
      ]
    );
  }
}

//Cantidad de episodios: 50