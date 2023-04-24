import 'package:flutter/material.dart';
import 'package:myapp/componentes/item_peliculas.dart';
import 'package:myapp/componentes/item_series.dart';
import 'package:myapp/wpInicio/item_cabecera.dart';


class paginaInicio extends StatelessWidget {
  const paginaInicio({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold( //metodo para el manejo de widgets
      backgroundColor: Colors.black26, //color de fondo negro
      body: ListView(
        children: <Widget>[
          const CabeceraInicial(),
          Peliculas(),
          ListaSeries(),
          navInferior()
        ],
      )
    );
  }
  //Funcion que ofrece una vista previa de algunas peliculas
  Widget Peliculas() {
    return Column( //retorna una columna
      crossAxisAlignment: CrossAxisAlignment.start, //alineamos el eje al inicio
      children: <Widget>[ //hijos que contienen widget de texto y listview
        const Padding(
          padding: EdgeInsets.all(15), //todo el padding de 15
          child: Text("Peliculas", //widget de texto
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              )),
        ),
        SizedBox(height: 150.0, //caja de separacion de 150
            child: ListView( //list view mandando a llamar  a peliculas
              scrollDirection: Axis.horizontal, //funcion pàra que el list view sea escroleable horizontalmente
              children: const <Widget>[ //hijos del listview
                mainPeliculas() //mandando a llamar  a peliculas
              ],
            ))
      ],
    );
  }
  //todo de la misma manera que el widget anterior pero con series
  Widget ListaSeries() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text("Series",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              )),
        ),
        SizedBox(height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                 Series(),
              ],
            ))
      ],
    );
  }

  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Busqueda',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_sharp),
              label: 'Mas'
          ),
        ]
    );
  }
  }
