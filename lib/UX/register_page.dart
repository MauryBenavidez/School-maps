import 'dart:html';

import 'package:flutter/material.dart';
import 'package:schools_maps/UX/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final nombreEditingController = new TextEditingController();
  final apellidoEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmpasswordEditingController = new TextEditingController();
  @override

  Widget build(BuildContext context) {

    //Nombre

    final NombreField = TextFormField(
      autofocus: false,
      controller: nombreEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value)
      {
        nombreEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nombre",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    );
// Apellido
    final ApellidoField = TextFormField(
      autofocus: false,
      controller: apellidoEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value)
      {
        apellidoEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
     
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Apellido",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    );
    final emailField = TextFormField(
      autofocus: false,
      controller: nombreEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value)
      {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Correo electronico",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    );
    // contraseña
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value)
      {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Contraseña",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    );


    //confirmar contraseña
    final confirmpasswordField = TextFormField(
      autofocus: false,
      controller: confirmpasswordEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value)
      {
        confirmpasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
     
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirmar contraseña",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
     final singUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,


        onPressed: () {
          
        },
        child: Text("Registrarme", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color:Colors.white, fontWeight:  FontWeight.bold),
       
        ),

    ),
    );
     return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Schoo Maps"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
          
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            
            color: Colors.white,
            child: Padding(
              
              padding: const EdgeInsets.all(60),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   SizedBox(
                      height: 200,
                      child:  Image.asset(
                     'assets/logo.png',
                     fit: BoxFit.contain,
                     ),),

                   SizedBox(height:45),
                    NombreField,
                    SizedBox(height:40),
                    ApellidoField, 
                    SizedBox(height:40),
                     emailField, 
                    SizedBox(height:40),
                     passwordField, 
                    SizedBox(height:40),
                     confirmpasswordField, 
                    SizedBox(height:40),
                    singUpButton,
                    SizedBox(height:20),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Ya tienes una cuenta?"),
                        GestureDetector(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: Text("Iniciar sesion",style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                           fontSize: 15,
                           )
                           ),
                          
                           
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

        ),
        ),
      
    );
  }
}