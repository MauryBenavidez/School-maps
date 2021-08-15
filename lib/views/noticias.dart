import 'package:flutter/material.dart';

import 'package:schools_maps/views/widgets/widget_noticias.dart';

class Noticias extends StatefulWidget {
  static String id ='Noticias';
  @override
  State<Noticias> createState() => _MyStatefulWidgetState();
  
}


class _MyStatefulWidgetState extends State<Noticias> {
  
  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),//encabezado de la pantalla 
        
      ),
      
      body: Center(
        child: Column(
          
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(
              top: 40.0,
              left: 30.0,
              right: 30.0,

            ),
            
            ),
            SizedBox(
              height: 5.0,
            ),
            Widgetnoticias(),
          ],
        ),
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'inicio',
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Noticias',
            backgroundColor: Colors.cyan,
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      
    );
    
  }
  
}

