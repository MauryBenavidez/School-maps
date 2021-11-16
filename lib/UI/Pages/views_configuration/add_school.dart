import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  AddSchool createState() => AddSchool();
}

class AddSchool extends State<Add> {
  //El texteditingcontroller es un controlador para un texto editable.
  TextEditingController nombre = TextEditingController(); //Son los campos de texto que podemos rellenar.
  TextEditingController direccion = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController web = TextEditingController();
  TextEditingController horario = TextEditingController();
  TextEditingController imagen = TextEditingController();

  final firebase = FirebaseFirestore.instance; //Con esta linea hacemos la conexion con Firebase.

  agregar() async { //Este es el boton para agregar una escuela.
    try {
      await firebase.collection("escuelas").doc(nombre.text).set({ //El await nos permite esperar la respuesta.
                                                                  //Definimos la collection como "escuelas"
                                                                  //Y el documento con el nombre.
        "nombre": nombre.text, //Definimos todas las variables que va a recibir como texto.
        "direccion": direccion.text,
        "telefono": telefono.text,
        "web": web.text,
        "horario": horario.text,
        "imagen": imagen.text,
      });
    } catch (e) { //Guarda todos los datos en la variable e.
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
          title: Text("Agregar escuela"), //Definimos el app bar con el texto de agregar escuela.
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView( //Desde aqui es el codigo de los campos de texto.
            children: [
              TextField(
                controller: nombre, //Definimos la variable donde se guardara el texto ingresado en el campo.
                decoration: InputDecoration(
                    labelText: "Nombre de la escuela",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox( //Espacio
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
              Row( //Acá entramos a el Row donde estaran los tres botones, agregar, actualizar y editar.
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green), //Le ponemos el color.
                    onPressed: () { //Aquí cuando presiona el boton envia los datos y limpia los campos.
                      agregar();
                      nombre.clear();
                      direccion.clear();
                      telefono.clear();
                      web.clear();
                      horario.clear();
                      imagen.clear();
                    },
                    child: Text('Agregar'), //Texto del boton,
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
                      stream: firebase.collection('escuelas').snapshots(), //Definimos el canal donde iran los datos con stream y guardamos
                                                                          //la instancia con snapshot.
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder( //Si snapshot tiene los datos devuelve los datos.
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
                          return Center(child: CircularProgressIndicator()); //Indicador de que está cargando
                        }
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
