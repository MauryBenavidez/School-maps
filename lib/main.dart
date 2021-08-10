import 'package:flutter/material.dart';


import 'views/inicio.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Inicio.id,
      routes: {
        Inicio.id: (_) => Inicio(),
        
      },
    );
  }
}

