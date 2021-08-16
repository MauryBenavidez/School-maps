import 'package:flutter/material.dart';


class Widgetnoticias extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,//es para seleccionar quien va  atener el mayor espacio
      child: ListView.builder(
        
        scrollDirection: Axis.vertical,// Es para dar la direccion en donde se mueve los elementos
        
        padding: EdgeInsets.only(//medida de la lista
          left: 25.0,
          right: 25.0
        ),
        itemBuilder: (BuildContext context, int index) {//uso el listview.builder me permite tenert acceso al index
        return Padding(padding: EdgeInsets.only(//posicion de  los bloques
          left: 10.0,
          right: 10.0,
          top: 15.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          
          children: <Widget>[
            
            Container(//para que los elemnetos que esten adentro del container se separen del borde
              height: 65.0,//ancho de los campos
              color: Colors.cyan,//color de los campos
              child: const Center(child: Text(
                'E.P.E.T N°20:'),
                
              ),
              padding: EdgeInsets.only(
                
                right: 300.0,
              ),
            ),
          ],
        ),
        );



       }
      ),
      
    );
  }
}

