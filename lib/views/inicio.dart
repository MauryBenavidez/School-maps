import 'package:flutter/material.dart';
import 'package:schools_maps/views/widgets/barra.dart';

class Inicio extends StatefulWidget {
  static String id ='Inicio';
  @override
  State<Inicio> createState() => _MyStatefulWidgetState();
  
}


class _MyStatefulWidgetState extends State<Inicio> {
  
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(

            ),
            child: Barra(),
            )
          ],
        ),
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'inicio',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Noticias',
            backgroundColor: Colors.green,
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      
    );
    
  }
  
}


  

  

  
  
  









