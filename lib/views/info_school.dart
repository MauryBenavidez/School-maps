import 'package:flutter/material.dart';

class InfoSchool extends StatefulWidget {
  static String id = "info_school";
  @override
  ViewInfoSchool createState() => ViewInfoSchool();
}

class ViewInfoSchool extends State<InfoSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de la escuela'),
        centerTitle: true,
      ),
      backgroundColor: (Color(0xFF1F5BA0)),
    );
  }
}
