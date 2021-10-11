import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text('Usuario'),
            accountEmail: Text('Ejemplo@mail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue[300],
              foregroundImage: AssetImage(""),
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
              leading: Icon(Icons.settings, color: Colors.indigo[900]),
              title: Text("Configuración"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.report, color: Colors.indigo[900]),
              title: Text("Reportar un problema"),
              onTap: () {}),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.indigo[900]),
            title: Text("Cerrar Sesión"),
          ),
        ],
      ),
    );
  }
}
