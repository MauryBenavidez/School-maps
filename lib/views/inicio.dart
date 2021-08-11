

import 'package:flutter/material.dart';
import 'package:schools_maps/views/widgets/barra.dart';



class Inicio extends StatelessWidget {
  static String id = 'inicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     child: _bodyPage(context),
      ),
         
    );
    
    
  }

  Widget _bodyPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
       Padding(
         padding: EdgeInsets.only(
           top: 0.0,
           left: 16.0,
           right: 16.0,
           ),
           
           
           ),
           _body(),
           
           
           
       ],
       
    );
  }

 

  Widget _body() {
    return Expanded(
      child: ListView(
        
        shrinkWrap: true,
        children: [
          Container(
            height: 945,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(
                
               
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.only(
                  
                ),
                child: Barra(),
                ),
               
              ],
            ),
          
          )
        ],
      ),
    );
  }

 

 
}

  

   

  

  

  
  
  









