import 'package:flutter/material.dart';



class Widgetnoticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Column(
      
      
      children: <Widget>[
        const Card(//cuadro de texto
          color: Colors.blue,
          child: Padding(padding: EdgeInsets.only(//tamaño de el cuadro de texto
            top: 20.0,
            left: 50.0,
            right: 50.0,
            
          ),
          
          child: Padding(padding: EdgeInsets.all(10.0),//cuadro de texto Noticas
          child: Text('Noticias',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          ),
          
          ),
        ),
        
        
        

        ListTile(//Sirve para tener un cuadrod e texto con 3 lines
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°20',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),//estilo de texto
        ),
        subtitle: Text('Estan en presencialidad'),
        isThreeLine: true,//para separar los cuadros de texto
        ),

        ListTile(
            
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°14',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en presencialidad'),
        isThreeLine: true,//widget que se mustra despues del texto, aqui esta el icon de casa cuadro
        ),
          ListTile(
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°8',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
          
        ),
        subtitle: Text('Estan en presencialidad'),
        isThreeLine: true,

        ),
          ListTile(
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°3',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en presencialidad'),
        isThreeLine: true,
        ),
          ListTile(
          trailing: Icon(Icons.computer),

          title: Text(
          'E.P.E.T N°7',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
          
        ),
        subtitle: Text('Estan en virtualidad'),
        isThreeLine: true,
        ),

        
       
      ],
      

    );
    
  }
}

