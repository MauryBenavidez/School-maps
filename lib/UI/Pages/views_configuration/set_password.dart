import 'package:flutter/material.dart';

class SetPassword extends StatefulWidget {
  @override
  View_SetPassword createState() => View_SetPassword();
}

class View_SetPassword extends State<SetPassword> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cambiar contraseña',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
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

  TextEditingController contrasenaCtrl = new TextEditingController();
  formItemsDesign(
    icon,
    item,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUI() {
    return Column(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      formItemsDesign(
          Icons.lock_outline_rounded,
          TextFormField(
            obscureText: true,
            controller: contrasenaCtrl,
            decoration: new InputDecoration(
              labelText: 'Contraseña actual',
            ),
          )),
      formItemsDesign(
          Icons.lock_outline_rounded,
          TextFormField(
            obscureText: true,
            controller: contrasenaCtrl,
            decoration: new InputDecoration(
              labelText: 'Contraseña nueva',
            ),
          )),
      SizedBox(
        height: 5.0,
      ),
      GestureDetector(
          onTap: () {},
          child: Container(
            margin: new EdgeInsets.all(30.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(colors: [
                Color(0xFF0484EC),
                Color(0xFF0484EC),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Text("Guardar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ))
    ]);
  }
}
