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
      backgroundColor: (Color(0xFF0E8ADD)), //Color del fondo de la pantalla.
      body: _pantallaActual == 0
          ? PantallaHome()
          : PantallaFotos(), //Con esto se intercambia de una pantalla a otra.
      bottomNavigationBar: BottomNavigationBar(
        //Esta es la barra de navegación que esta abajo de la pantalla.
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            Colors.blue, //Color del fondo de la barra de navegación.
        selectedItemColor: Colors.white, //Color del item seleccionado.
        unselectedItemColor: Colors.black, //Color del item NO seleccionado.
        iconSize: 27, //Tamaño de los iconos de la barra de navegación.
        onTap: (index) {
          //Permite al tocar un boton cambiar de pantalla en la barra de navegación,
          setState(() {
            _pantallaActual = index;
          });
        },
        currentIndex:
            _pantallaActual, //Define la pantalla principal por defecto.
        items: [
          //Items de la barra de navegación.
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Escuela",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.burst_mode_sharp),
              label: "Fotos",
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}

class PantallaHome extends StatelessWidget {
  //Pantalla de la infomacion de la escuela
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Escuela Provincial de Educación Técnica N°20"
                .toUpperCase(), //Titulo principal de la pantalla.
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
            "Centro de educación secundaria", //Subtitulo de la pantalla.
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Impact',
            ),
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
          Container(
            //Imagen de la escuela.
            child: Image.asset(
              'assets/epet20.jpg',
              height: 274,
            ),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              //Sombra de la imagen.
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 30,
              ),
            ]),
          ),
          SizedBox(
            //Espacio
            height: 20.0,
          ),
          Text(
            "INFORMACIÓN", //Subtitulo de la pantalla.
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Impact',
            ),
          ),
          SizedBox(
            //Espacio
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.travel_explore_rounded,
              ),
              Text(
                ' http://www.epet20.com.ar/                     ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fmd_good_sharp,
              ),
              Text(
                ' Ubicación: Lanín 2020, Q8300 Neuquén',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.gps_fixed,
              ),
              Text(
                ' Coordenadas: 2WP6+3W Neuquén         ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
              ),
              Text(
                ' 0299 447-8052                                          ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.travel_explore_rounded,
              ),
              Text(
                ' http://www.epet20.com.ar/                     ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timer_rounded,
              ),
              Text(
                ' 8:00am - 6:30pm                                       ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            //Espacio
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class PantallaFotos extends StatelessWidget {
  //Pantalla de fotos de la escuela.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/1fotoepet20.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/2fotoepet20.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/3fotoepet20.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/4fotoepet20.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/5fotoepet20.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/6fotoepet20.jpg'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
