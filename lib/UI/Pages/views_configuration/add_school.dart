import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  AddSchool createState() => AddSchool();
}

class AddSchool extends State<Add> {
  TextEditingController nombre = TextEditingController();
  TextEditingController direccion = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController web = TextEditingController();
  TextEditingController horario = TextEditingController();
  TextEditingController imagen = TextEditingController();
  final firebase = FirebaseFirestore.instance;
  agregar() async {
    try {
      await firebase.collection("escuelas").doc(nombre.text).set({
        "nombre": nombre.text,
        "direccion": direccion.text,
        "telefono": telefono.text,
        "web": web.text,
        "horario": horario.text,
        "imagen": imagen.text,
      });
    } catch (e) {
      print(e);
    }
  }

  editar() async {
    try {
      firebase.collection("escuelas").doc(nombre.text).update({
        'direccion': direccion.text,
        'telefono': telefono.text,
        'web': web.text,
        'horario': horario.text,
        'imagen': imagen.text,
      });
    } catch (e) {
      print(e);
    }
  }

  eliminar() async {
    try {
      firebase.collection("escuelas").doc(nombre.text).delete();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Agregar escuela"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              TextField(
                controller: nombre,
                decoration: InputDecoration(
                    labelText: "Nombre de la escuela",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: direccion,
                decoration: InputDecoration(
                    labelText: "Dirección",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: telefono,
                decoration: InputDecoration(
                    labelText: "Telefono",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: web,
                decoration: InputDecoration(
                    labelText: "Pagina WEB",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: horario,
                decoration: InputDecoration(
                    labelText: "Horario",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: imagen,
                decoration: InputDecoration(
                    labelText: "Imagen principal de la escuela",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      agregar();
                      nombre.clear();
                      direccion.clear();
                      telefono.clear();
                      web.clear();
                      horario.clear();
                      imagen.clear();
                    },
                    child: Text('Agregar'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                      editar();
                      nombre.clear();
                      direccion.clear();
                      telefono.clear();
                      web.clear();
                      horario.clear();
                      imagen.clear();
                    },
                    child: Text('Actualizar'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      eliminar();
                      nombre.clear();
                      direccion.clear();
                      telefono.clear();
                      web.clear();
                      horario.clear();
                      imagen.clear();
                    },
                    child: Text('Eliminar'),
                  ),
                ],
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: StreamBuilder<QuerySnapshot>(
                      stream: firebase.collection('escuelas').snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, i) {
                                QueryDocumentSnapshot x =
                                    snapshot.data!.docs[i];
                                return ListTile(
                                  title: Text(x['nombre']),
                                  subtitle: Text(x['direccion']),
                                );
                              });
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
