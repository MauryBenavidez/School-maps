import 'package:flutter/material.dart';
import 'package:schools_maps/Inicio.dart';
import 'Inicio.dart';
void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("School_Maps"),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Busca aquí"),
                onSubmitted: (String value) {print(value);},
              )
              
            ],),
        ),
    ),
  );  runApp(app);
}
  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(),
    );
  }
}
class MyTextField extends StatefulWidget {
    MyTextField({Key key}) : super(key: key);

    _MyTextFieldState createState() => _MyTextFieldState();

  }

  class _MyTextFieldState extends State<MyTextField> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        
      );
    }
  }