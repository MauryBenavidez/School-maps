import 'package:flutter/material.dart';

//import 'views_configuration/set_email.dart';
//import 'views_configuration/set_password.dart';
//import 'views_configuration/set_perfilphoto.dart';

class Configuration extends StatefulWidget {
  @override
  ConfigurationPanel createState() => ConfigurationPanel();
}

class ConfigurationPanel extends State<Configuration> {
  TextEditingController contrasenaCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configuración',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Form(
            child: (formUI()),
          ),
        ),
      ),
    );
  }

  Widget formUI() {
    return ListView(children: <Widget>[
      SizedBox(
        height: 150,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute());
          },
          child: Container(
            margin: new EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              gradient: LinearGradient(colors: [
                Color(0xFF211496),
                Color(0xFF211496),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Text("Cambiar foto de perfil",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          )),
      SizedBox(
        height: 20,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute());
          },
          child: Container(
            margin: new EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              gradient: LinearGradient(colors: [
                Color(0xFF211496),
                Color(0xFF211496),
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
        height: 20,
      ),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute());
          },
          child: Container(
            margin: new EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              gradient: LinearGradient(colors: [
                Color(0xFF211496),
                Color(0xFF211496),
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
