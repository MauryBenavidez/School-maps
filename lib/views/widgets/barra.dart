import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Barra extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(//es 
        left: 13.0,
        right: 10.0,
        
      ),
      
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.blue,//color de la brrra de busqueda
        
        
        borderRadius:  BorderRadius.circular(20.0),//contorno de la barra de busqueda
      ),
      child: TextField(
        cursorColor: Colors.grey,//color de lo que escribis en la barra de busqueda
        decoration: InputDecoration(
          prefixIcon: Icon(//Icono de busqueda con sus configuraciones
            CupertinoIcons.search_circle,
            size: 35.0,
            color: Colors.white,
            ),
            suffixIcon: Icon(//Icono de recientes con sus configuraciones
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