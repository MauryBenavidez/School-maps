import 'package:flutter/material.dart';
import 'package:schools_maps/views/widgets/barra.dart';
import 'package:schools_maps/views/widgets/botones.dart';

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
           top: 16.0,
           left: 16.0,
           right: 16.0,
           ),
           child: _appBar(),
           
           ),
           _body(),
           
           
           
       ],
       
    );
  }

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Icon(
           Icons.account_circle
           
           ),
        Column(
          mainAxisSize: MainAxisSize.max,
          
          children: [
            Text('Schools',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              
            ),),
            Row(
              children: [
                Text('Maps',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),),
                
              ],
            )
          ],
        )
       
      ],
    );
  }

  Widget _body() {
    final double _bordervalue =35.0;

    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 40.0),
        shrinkWrap: true,
        children: [
          Container(
            height: 750.0,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_bordervalue),
                topRight: Radius.circular(_bordervalue),
              )
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.only(
                  top: 40.0,
                  left:30.0,
                  right: 30.0,
                ),
                child: Barra(),
                ),
                
                Botones(),
              ],
            ),
          )
        ],

      ),
    );

    
  }

  
}

  

   

  

  

  
  
  









