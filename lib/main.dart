import 'package:flutter/material.dart';

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
  Container(child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    // ignore: deprecated_member_use
    child: FlatButton(onPressed: null,
        child: Image.asset('path/the_image.png'))));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
    
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

