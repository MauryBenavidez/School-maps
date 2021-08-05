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

class MyHome extends StatelessWidget {
  const MyHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     MyHome();
  }
}

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  
}

