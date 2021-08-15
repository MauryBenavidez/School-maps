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
      backgroundColor: (Color(0xFFFFFFFF)),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Escuela Provincial de Educación Técnica N°20".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Impact',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Centro de educación secundaria",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Impact',
              ),
            ),
          ],
        ),
      ),
    );
  }
}