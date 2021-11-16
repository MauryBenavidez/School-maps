import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:schools_maps/UX/login_page.dart';
import 'package:schools_maps/model/user_model.dart';

class logoutPage extends StatefulWidget {
  const logoutPage({ Key? key }) : super(key: key);

  @override
  _logoutPageState createState() => _logoutPageState();
}

class _logoutPageState extends State<logoutPage> {

  User? user= FirebaseAuth.instance.currentUser;
  UserModel loggedInUser =UserModel();

    final _formKey = GlobalKey<FormState>();

    @override
    void initState(){
      super.initState();
      FirebaseFirestore.instance
      .collection("users")
      .doc(user!.uid)
      .get()
      .then((value){
        this.loggedInUser = UserModel.fromMap(value.data());
        setState(() {
          
        });
      });
    }


   final TextEditingController logoutController =new TextEditingController();
  @override


  Widget build(BuildContext context) {
    
    

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cerrar sesion",),
        centerTitle: false,
        
      ),
body: Center(
  child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height:20),
                    Text("Estas seguro de cerrar sesión?"),
                   SizedBox(height:15),
                  ActionChip(label: Text("Cerrar sesión"), onPressed: () {
                    logout(context);//funcion de logout
                    
                  }),
                  
                  SizedBox(height: 20),
                        Text("Nombre:""${loggedInUser.firstName}",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),),
                        SizedBox(height: 20),

                         Text("Apellido:""${loggedInUser.secondName}",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),),

                        SizedBox(height: 20),
                        Text("Correo:""${loggedInUser.email}",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),),


                  ],
                  
                ),
              
            ),
          ),
   
),
    );
  }

  //funcion logout
  void logout (BuildContext context) async
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage()));//volver al login
  }
}