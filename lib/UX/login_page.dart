import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:schools_maps/UX/inicio.dart';
import 'package:schools_maps/UX/register_page.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


   final _formKey = GlobalKey<FormState>();


   final TextEditingController emailController =new TextEditingController();
   final TextEditingController passwordController =new TextEditingController();


   final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
     validator: (value) {
       if (value!.isEmpty) {
         return ("Introduzca la dirección de correo electrónico");
       }
       //reg expresion para el validator del email
       if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
         return ("Introduzca una dirección de correo válida");
       }
       return null;
     },
      onSaved: (value)
      {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      //estilo del campo para email
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Correo electrónico",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    );
      
     final passwordField = TextFormField(

      autofocus: false,
      controller: passwordController,
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
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      
       decoration: InputDecoration(
        
        prefixIcon: Icon(Icons.password_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Contraseña",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        
      ),
    
    );
    
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,


        onPressed: () {
          singIn(emailController.text, passwordController.text);
        },
        child: Text(
          "Iniciar Sesión", 
          textAlign: TextAlign.center,
         style: TextStyle(fontSize: 20, color:Colors.white, fontWeight:  FontWeight.bold),
       
        ),

    ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("School Maps",),
        centerTitle: true,
        
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
                     'assets/Logo2.png',
                     fit: BoxFit.contain,
                     ),),

                   SizedBox(height:40),
                    emailField,
                    SizedBox(height:40),
                    passwordField, 
                    SizedBox(height:40),
                    loginButton,
                   SizedBox(height:15),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("No tienes cuenta?"),
                        GestureDetector(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: Text("Registrarme",style: TextStyle(
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


  //Login function

  void singIn(String email, String password) async{

    if(_formKey.currentState!.validate())

  {
    // ignore: unused_local_variable
    var set = await _auth
     .signInWithEmailAndPassword(email: email, password: password).then((uid) => {
      Fluttertoast.showToast(msg: "Inicio de sesión exitoso"),
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Inicio())),

    }).catchError((e)
    {
      Fluttertoast.showToast(msg: e!.message);
    });  
  }

  }
}