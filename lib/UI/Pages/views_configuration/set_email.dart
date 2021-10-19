import 'package:flutter/material.dart';

class SetEmail extends StatefulWidget {
  @override
  View_SetEmail createState() => View_SetEmail();
}

class View_SetEmail extends State<SetEmail> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cambiar correo',
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

  TextEditingController correoCtrl = new TextEditingController();
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
          Icons.email_rounded,
          TextFormField(
            controller: correoCtrl,
            decoration: new InputDecoration(
              labelText: 'Correo actual',
            ),
          )),
      formItemsDesign(
          Icons.email_rounded,
          TextFormField(
            controller: correoCtrl,
            decoration: new InputDecoration(
              labelText: 'Correo nuevo',
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
