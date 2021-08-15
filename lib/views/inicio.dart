import 'package:flutter/material.dart';//paquete principal
import 'package:schools_maps/views/widgets/barra.dart';
import 'package:schools_maps/views/widgets/widget_noticias.dart';//pauquete de widget barra

class Inicio extends StatefulWidget {
  static String id ='Inicio';//id de conexion con main
  @override
  State<Inicio> createState() => _MyStatefulWidgetState();
  
}


class _MyStatefulWidgetState extends State<Inicio> {
  
  int _selectedIndex = 0;
 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;//para que en la barra de navegacion cuando le de click a alugun boton este cambie de pantalla
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(//para dar el tamaño a la barra de busqueda

            ),
            child: Barra(),//conexión de widget barra con inicio
            ),
            SizedBox(
              height: 30.0,
            ),
            
          ],
        ),
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(//boton de inicio en la barra de busqueda, este nos permite ir de la pantalla de noticias a la de inicio
            icon: Icon(Icons.home),
            label: 'inicio',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(//boton de noticias en la barra de navegacion, este nos permite ir del inicio a la pantalla de noticias
            icon: Icon(Icons.notifications),
            label: 'Noticias',
            backgroundColor: Colors.green,
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,//color de los botones cundo le doy click
        onTap: _onItemTapped,//lo que pasa cuando le doy click
      ),
      
    );
    
  }
  
}


  

  

  
  
  









