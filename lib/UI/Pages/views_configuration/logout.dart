import 'package:flutter/material.dart';
import 'package:schools_maps/UX/login_page.dart';

class logoutPage extends StatefulWidget {
  const logoutPage({ Key? key }) : super(key: key);

  @override
  _logoutPageState createState() => _logoutPageState();
}

class _logoutPageState extends State<logoutPage> {

    final _formKey = GlobalKey<FormState>();


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
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   SizedBox(height:15),
                  ActionChip(label: Text("Cerrar sision"), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
                  SizedBox(height:20),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Estas seguro de cerrar sesión?"),
                      ],
                    )
                    
                  ],
                ),
              ),
            ),
          ),
          
),
      
      


    );
  }
}