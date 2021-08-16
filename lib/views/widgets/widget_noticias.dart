import 'package:flutter/material.dart';


class Widgetnoticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _listaNoticias(),
    );
  }

  Widget _listaNoticias(){
    final lst = [
      ListTile(
        trailing: Icon(Icons.school),
        title: Text('E.P.E.T N°20'),
        subtitle: Text('Esta en presencialidad'),
      ),
      ListTile(
        trailing: Icon(Icons.school),
        title: Text('E.P.E.T N°14'),
        subtitle: Text('Esta en presencialidad'),
      ),
      ListTile(
        trailing: Icon(Icons.school),
        title: Text('E.P.E.T N°8'),
        subtitle: Text('Esta en presencialidad'),
      ),
      ListTile(
        trailing: Icon(Icons.school),
        title: Text('E.P.E.T N°3'),
        subtitle: Text('Esta en presencialidad'),
      ),

    ];
    return ListView.builder(
      itemCount: lst.length,

      itemBuilder:  (context, i){
        return lst[i];
      }

    
  
    );
  }
}

