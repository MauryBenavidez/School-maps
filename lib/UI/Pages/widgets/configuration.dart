import 'package:flutter/material.dart';
import 'package:schools_maps/UI/Pages/views_configuration/add_school.dart';
import 'package:schools_maps/UI/Pages/views_configuration/logout.dart';
import 'package:schools_maps/UI/Pages/views_configuration/report.dart';

class Configuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 5,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Add(),
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
            child: Text("Agregar escuela",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          )),
      SizedBox(
        height: 5,
      ),
     
      
      
     
      SizedBox(
        height: 5,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Report(),
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
            child: Text("Reportar error",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          )
          ),




             GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => logoutPage(),
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
            child: Text("Cerrar sesion",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          )
          ),
    ]);
  }
}
