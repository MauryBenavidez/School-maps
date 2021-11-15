import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:schools_maps/UX/inicio.dart';
import 'package:schools_maps/UX/login_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:schools_maps/model/user_model.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _auth = FirebaseAuth.instance;


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

      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {

          return("Este campo no puede estar vacio");        
        }
        if (!regex.hasMatch(value)) {

          return ("El nombre tiene que tener (Min.3 caracteres");
          
        }
        return null;
      },
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

      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {

          return("Este campo no puede estar vacio");        
        }
       {

          return null;
          
        }
      },
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
      controller: emailEditingController,
      keyboardType: TextInputType.name,

      validator: (value) {

       if (value!.isEmpty) {
         return ("Introduzca la dirección de correo electrónico");
         
       }
       
       if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
         return ("Introduzca una dirección de correo valida");
         
       }
       return null;

     },
      onSaved: (value)
      {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Correo electrónico",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    );
    // contraseña
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      keyboardType: TextInputType.name,
      obscureText: true,

       validator: (value) {
        RegExp regex = new RegExp(r'^.{7,}$');
        if (value!.isEmpty) 
        {
        return ("Introduzca una contraseña");  
        }
        if(!regex.hasMatch(value))
        {
          return("La contraseña debe tener(Min.7 caracteres)");
        }
      },
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
      obscureText: true,

      validator: (value){

      if (confirmpasswordEditingController.text !=
          passwordEditingController.text
      ) {
        return "verifique que las contraseñas sean iguales";
      }
      return null;

      },
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
          singUp(emailEditingController.text, passwordEditingController.text);
        },
        child: Text("Registrarme", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color:Colors.white, fontWeight:  FontWeight.bold),
       
        ),

    ),
    );
     return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("School Maps"),
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
                      height: 100,
                      child:  Image.asset(
                     'assets/logo.png',
                     fit: BoxFit.contain,
                     ),),

                   SizedBox(height:20),
                    NombreField,
                    SizedBox(height:20),
                    ApellidoField, 
                    SizedBox(height:20),
                     emailField, 
                    SizedBox(height:20),
                     passwordField, 
                    SizedBox(height:20),
                     confirmpasswordField, 
                    SizedBox(height:20),
                    singUpButton,
                    SizedBox(height:15),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Ya tienes una cuenta?"),
                        GestureDetector(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: Text("Iniciar sesión",style: TextStyle(
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

  void singUp(String email, String password) async{

    if(_formKey.currentState!.validate())

  {
    await _auth.createUserWithEmailAndPassword(email: email, password: password)
  
    .then((value)=>{

      postDetailsToFirestore()

    }).catchError((e){

       Fluttertoast.showToast(msg: e!.message);

    });
    
  }

  }

  postDetailsToFirestore() async
  {

    //llamada a firestore
    //llamada a user model
    
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    //escribindo todos los valores


    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = nombreEditingController.text;
    userModel.secondName = apellidoEditingController.text;


    await firebaseFirestore
      .collection("users")
      .doc(user.uid)
      .set(userModel.toMap());
      Fluttertoast.showToast(msg: "Cuenta creada exitosamente");

      Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context) => Inicio()),(route) => false);




  }

  void singIn(String text, String text2) {}

  
 }