
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
         return ("Introdusca la direccion de correo electronico");
         
       }
       
       if (!RegExp("r'^(([^<>()[\]\\.,;:\s\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}));").hasMatch(value)) {
         return ("Introdusca una direccion de correo valida");
         
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
        hintText: "Correo electronico",
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
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) 
        {
        return ("Introduca una contraseña");  



        }

        if(!regex.hasMatch(value))
        {
          return("La contraseña tiene que tener (Min. 6 caracteres");
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
          "Iniciar Sesion", 
          textAlign: TextAlign.center,
         style: TextStyle(fontSize: 20, color:Colors.white, fontWeight:  FontWeight.bold),
       
        ),

    ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Eschool Maps",),
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
                      height: 200,
                      child:  Image.asset(
                     'assets/logo.png',
                     fit: BoxFit.contain,
                     ),),

                   SizedBox(height:60),
                    emailField,
                    SizedBox(height:60),
                    passwordField, 
                    SizedBox(height:60),
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

  void singIn(String email, String password) async{

    if(_formKey.currentState!.validate())

  {
    await _auth
    .signInWithEmailAndPassword(email: email, password: password)
    .then((uid) => {
      Fluttertoast.showToast(msg: "Inicio de sesion exitoso"),
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Inicio())),

    }).catchError((e)
    {

      Fluttertoast.showToast(msg: e!.message);


    });
    
  }

  }
}