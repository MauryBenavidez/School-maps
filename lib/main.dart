import 'package:flutter/material.dart';
import 'views/inicio.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      
      body: Container(
        child: Column(
          children: <Widget>[
            
            TextField(
              decoration: InputDecoration(hintText: "Busca aquí"),
              onSubmitted: (String value) {
                print(value);
              },
              
            )
          ],
        ),
      ),
    ),
  );
  runApp(app);
  
}



class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'inicio',
      routes: {
'inicio': (_) => MyHome(),
},
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
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

