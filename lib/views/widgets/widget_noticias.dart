import 'package:flutter/material.dart';



class Widgetnoticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Column(
      
      children: <Widget>[
        ListTile(
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°20',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en precencialidad'),
        ),
          ListTile(
            
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°14',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en precencialidad'),
        ),
          ListTile(
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°8',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en precencialidad'),
        ),
          ListTile(
          trailing: Icon(Icons.school),

          title: Text(
          'E.P.E.T N°3',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en precencialidad'),
        ),
          ListTile(
          trailing: Icon(Icons.computer),

          title: Text(
          'E.P.E.T N°7',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
        ),
        subtitle: Text('Estan en virtualidad'),
        ),

        
       
      ],
      

    );
    
  }
}

