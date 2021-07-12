
import 'package:flutter/material.dart';
class MyTextField extends StatefulWidget {
    MyTextField({Key key}) : super(key: key);

    _MyTextFieldState createState() => _MyTextFieldState();

  }

  class _MyTextFieldState extends State<MyTextField> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Schools Maps"),
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
      );
    }
  }