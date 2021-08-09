import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.search),),
        BottomNavigationBarItem(icon: Icon(Icons.place),),

      ]
    ); 
  }
}

class BotonFlotante extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        
      }

      );
  }
}