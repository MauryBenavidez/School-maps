import 'package:flutter/material.dart';
import 'package:schools_maps/UI/Pages/views_configuration/set_email.dart';

class Configuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 150,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SetEmail(),
            ));
          },
          child: Container(
            margin: new EdgeInsets.all(30.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              gradient: LinearGradient(colors: [
                Color(0xFF0484EC),
                Color(0xFF0484EC),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Text("Cambiar correo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          )),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute());
          },
          child: Container(
            margin: new EdgeInsets.all(30.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              gradient: LinearGradient(colors: [
                Color(0xFF0484EC),
                Color(0xFF0484EC),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Text("Cambiar contraseña",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ))
    ]);
  }
}
