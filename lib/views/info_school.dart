import 'package:flutter/material.dart';

class InfoSchool extends StatefulWidget {
  static String id = "info_school";
  @override
  ViewInfoSchool createState() => ViewInfoSchool();
}

class ViewInfoSchool extends State<InfoSchool> {
  int _pantallaActual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de la escuela'),
        centerTitle: true,
      ),
      backgroundColor: (Color(0xFFFFFFFF)),
      body: _pantallaActual == 0 ? PantallaHome() : PantallaFotos(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _pantallaActual = index;
          });
        },
        currentIndex: _pantallaActual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Escuela"),
          BottomNavigationBarItem(
              icon: Icon(Icons.burst_mode_sharp), label: "Fotos")
        ],
      ),
    );
  }
}

class PantallaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
              fontSize: 20,
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
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Impact',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Image.asset(
              'assets/epet20.jpg',
              height: 274,
            ),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 30,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class PantallaFotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
