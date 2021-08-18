import 'package:flutter/material.dart'; //paquete principal
import 'package:schools_maps/views/info_school.dart';
import 'package:schools_maps/views/widgets/barra.dart'; //paquete de conexion con barra de busqueda
import 'package:schools_maps/views/widgets/widget_noticias.dart'; //paquete de conexion con noticias

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
    Barra(),
    Widgetnoticias(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              height: 25.0, //tamaño de los iconos de la barra de busqueda
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
            label: 'inicio',
          ),
          BottomNavigationBarItem(
            //boton de noticias en la barra de navegacion, este nos permite ir del inicio a la pantalla de noticias
            icon: Icon(Icons.notifications),
            label: 'Noticias',
          ),
        ],
        currentIndex:
            _selectedIndex, //la variable crada para identificar al index
        onTap: (index) => setState(
            () => _selectedIndex = index), //lo que pasa cuando le doy click
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          //boton flotante en la pantalla de inicio
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => InfoSchool(),
            ));
          },
          child: const Icon(Icons.place_outlined), //icono en el boton flotante
          backgroundColor: Colors.blue //color del boton flotante
          ),
      ),
      
    );
  }
}
