
import 'dart:developer';

import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {

  static String id = 'inicio';
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        titleSpacing:15,
        title: Text('School Maps'),
        
        

      ),
      
      body: Container(
        decoration: new BoxDecoration(
                         border: Border.all (color: Colors.grey, width: 1.0), // Una capa de borde gris
            color: Colors.white,
            borderRadius: BorderRadius.all( Radius.circular(10.0)),
          ),
        
        child: Column(
          
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Busca aquí"),
             
                
              
              
            ),
            
          ],
          
        ),
        
      ),
      
           
    );
  }

  Widget app(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$Counter',
              style: Theme.of(context).textTheme.bodyText1,
            )

          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        
        child: Icon(Icons.account_circle),
      ),

    );
      
    
  }

  

  
  
  

}







