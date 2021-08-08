import 'package:flutter/material.dart';
import 'package:schools_maps/views/widget/barra.dart';

class Inicio extends StatelessWidget {

  static String id = 'inicio';
  @override
  
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        titleSpacing:30,
        
        title: Text('School Maps'),
        
        

      ),
      
      body: Container(
        
        
          
          
        
        child: Column(
         
          children: <Widget>[
           
           Padding(
             padding: EdgeInsets.only(
             top: 40.0,
             left: 30.0,
             right: 30.0,
           ), 
           child: Barra(),
           )
          ],
          
        ),
        
      ),
      
           
    );
  }

  

   

  

  

  
  
  

}







