import 'package:flutter/material.dart'; //paquete principal
import 'package:schools_maps/UI/Pages/widgets/configuration.dart';

import 'package:schools_maps/UI/Pages/widgets/widget_noticias.dart'; //paquete de conexion con noticias
import 'package:flutter/cupertino.dart';

class Inicio extends StatefulWidget {
  static String id = 'Inicio'; //id de conexion con main
  @override
  State<Inicio> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Inicio> {
  int _selectedIndex = 0; //que pantalla se ve primero
  // ignore: non_constant_identifier_names
  final Screens = [
    //esto me permite navegar entre vistas

    Barras(),
    Widgetnoticias(),
    Configuration(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Color(0xFF1F5BA0)),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize
              .max, //es el espacio que queda libre en la patalla, en este caso la tenemos en maximo
          children: [
            Padding(
              padding:
                  EdgeInsets.only(//para dar el tamaño a la barra de busqueda
                      ),
              //conexión de widget barra con inicio
            ),
            SizedBox(
              height: 25.0,
              //tamaño de los iconos de la barra de busqueda
            ),
            Screens[_selectedIndex],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor:
            Colors.white, //color de los botones cundo le doy click
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //boton de inicio en la barra de busqueda, este nos permite ir de la pantalla de noticias a la de inicio
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            //boton de noticias en la barra de navegacion, este nos permite ir del inicio a la pantalla de noticias
            icon: Icon(Icons.notifications),
            label: 'Noticias',
          ),
          BottomNavigationBarItem(
            //boton de configuracion en la barra de navegacion, este nos permite ir del inicio a la pantalla de configuracion
            icon: Icon(Icons.settings),
            label: 'Configuracion',
          ),
        ],
        currentIndex:
            _selectedIndex, //la variable crada para identificar al index
        onTap: (index) => setState(
            () => _selectedIndex = index), //lo que pasa cuando le doy click
      ),
    );
  }
}

class Barras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 13.0,
        right: 10.0,
      ),
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.blue, //color de la brrra de busqueda

        borderRadius:
            BorderRadius.circular(20.0), //contorno de la barra de busqueda
      ),
      child: TextField(
        cursorColor:
            Colors.white, //color de lo que escribis en la barra de busqueda
        decoration: InputDecoration(
          prefixIcon: Icon(
            //Icono de busqueda con sus configuraciones
            CupertinoIcons.search_circle,
            size: 35.0,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            //Icono de recientes con sus configuraciones
            Icons.tune,
            color: Colors.white,
            size: 28.0,
          ),
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          hintText: 'Busca aquí...',
        ),
      ),
    );
  }
}
