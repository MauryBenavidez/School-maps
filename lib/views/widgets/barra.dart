import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Barra extends StatelessWidget {
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
        color: Colors.blue,
        
        
        borderRadius:  BorderRadius.circular(20.0),//contorno de la barra de busqueda
      ),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          prefixIcon: Icon(
            CupertinoIcons.search_circle,
            size: 35.0,
            color: Colors.white,
            ),
            suffixIcon: Icon(
              Icons.tune,
              color: Colors.white,
              size: 28.0,
            ),
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            hintText: 'Busca aquí...',
        ),
      ),
    );
  }
}