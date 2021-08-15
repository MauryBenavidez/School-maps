import 'package:flutter/material.dart';
import 'views/inicio.dart';
import 'views/noticias.dart';
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
      initialRoute: Noticias.id,
      routes: {
        Noticias.id: (_) => Noticias(),
        
      },
    );
  }
}

