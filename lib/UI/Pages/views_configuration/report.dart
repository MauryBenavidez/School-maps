import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Report extends StatefulWidget {
  @override
  ReportProblem createState() => ReportProblem();
}

class ReportProblem extends State<Report> {
  TextEditingController tituloCtrl = new TextEditingController();
  TextEditingController textoCtrl = new TextEditingController();
  File image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
    } on PlatformException catch (e) {
      print('Error al seleccionar la imagen: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reportar un problema'),
        backgroundColor: Colors.blue,
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Form(
            child: formUI(),
          ),
        ),
      ),
    );
  }

  Widget buildButton(String title, IconData icon, VoidCallback onClicked) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(56),
          primary: Colors.white,
          onPrimary: Colors.black,
          textStyle: TextStyle(fontSize: 20),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 16),
            Text(title),
          ],
        ),
        onPressed: onClicked,
      );

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
      Text(
        "Ingrese su error".toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Impact',
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      formItemsDesign(
          Icons.mode_edit_rounded,
          TextFormField(
            controller: tituloCtrl,
            decoration: new InputDecoration(
              labelText: 'Titulo del problema',
            ),
            maxLength: 20,
          )),
      formItemsDesign(
          Icons.mode_comment_sharp,
          TextFormField(
            controller: textoCtrl,
            decoration: new InputDecoration(
              labelText: 'Descripción',
            ),
            maxLength: 100,
            keyboardType: TextInputType.text,
          )),
      SizedBox(
        height: 20.0,
      ),
      Text(
        "Adjunte una captura de pantalla".toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'Impact',
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      buildButton('Galeria', Icons.image_outlined,
          () => {pickImage(ImageSource.gallery)}),
      SizedBox(
        height: 15.0,
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
            child: Text("Enviar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ))
    ]);
  }
}
