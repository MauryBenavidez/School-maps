import 'package:flutter/material.dart';



class Inicio extends StatelessWidget {
  static String id = 'inicio';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Hola Mundo'),
        ),
      ),
    );
  }
}



