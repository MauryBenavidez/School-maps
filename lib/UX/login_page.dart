import 'package:flutter/material.dart';
import 'package:schools_maps/UX/inicio.dart';


class LoginPage extends StatefulWidget {
  static String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController passwordCtrl = new TextEditingController();
  bool selectLogin = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (Color(0xFF1F5BA0)),
        body: new SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.indigo, Colors.blue])),
            ),
            SizedBox(
              height: 70.0,
            ),
            Text(
              "¡BIENVENIDO a SchoolMaps!".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Impact',
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectLogin = false;
                    });
                  },
                  child: const Text(
                    'Inicia sesión',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectLogin = true;
                    });
                  },
                  child: const Text(
                    'Regístrate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            (selectLogin) ? _columnSignup() : _columnLogin(),
          ],
        )),
      ),
    );
  }

  Widget _columnLogin() {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        _textFieldEmail(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldPassword(),
        SizedBox(
          height: 15.0,
        ),
        _buttonLostPassword(),
        SizedBox(
          height: 25.0,
        ),
        _buttonLogin(context),
      ],
    );
  }

  Widget _columnSignup() {
    return Column(
      children: [
        SizedBox(
          height: 25.0,
        ),
        _textFieldName(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldEmail(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldPassword(),
        SizedBox(
          height: 25.0,
        ),
        _buttonSignUp(),
      ],
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (states) => 10.0,
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) => Color(0xFF217DE7)),
        padding: MaterialStateProperty.resolveWith<EdgeInsets>(
          (states) => EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 15.0,
          ),
        ),
      ),
      child: Text(
        'Iniciar sesión'.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      onPressed: () => selectedItem(context, 0),
    );
  }

  Widget _buttonSignUp() {
    return TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        backgroundColor: MaterialStateProperty.all(
          Color(0xFF217DE7),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 105,
            vertical: 15.0,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        'REGISTRARME',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
      ),
      onPressed: () {
        save();
      },
    );
  }

  Widget _buttonLostPassword() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Olvidé mi contraseña',
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return "";
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return "";
    }
  }

  String validatePassword(String value) {
    print("valorrr $value passsword ${passwordCtrl.text}");
    if (value != passwordCtrl.text) {
      return "Las contraseñas no coinciden";
    }
    return "";
  }

  save() {
    if (keyForm.currentState!.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Correo ${emailCtrl.text}");
      keyForm.currentState!.reset();
    }
  }
}

Widget _textFieldName() {
  
  
  return _textFieldGeneral(
    labelText: "Nombre",
    hintText: "Mauricio Benavidez",
    icon: Icons.person_outline,
    onChanged: (value) {},
    obscureText: false,  errorText: '', 
  );
}

Widget _textFieldEmail() {
  return _textFieldGeneral(
    labelText: "Correo",
    hintText: "ejemplo@gmail.com",
   
    onChanged: (value) {},
    icon: Icons.email_outlined,
    obscureText: false, errorText: '', 
  );
}

Widget _textFieldPassword() {
  
  return _textFieldGeneral(
    labelText: 'Contraseña',
    onChanged: (value) {},
    icon: Icons.lock_outline_rounded,
    obscureText: true,
    hintText: '', errorText: '',
  );
}


// ignore: camel_case_types
class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function onChanged;
  final IconData icon;
  final bool obscureText;
  final String errorText;
  const _textFieldGeneral(
      { required this.labelText,
      required this.hintText,
      required this.onChanged,
       required this.icon,
       required this.obscureText,
      required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
       
        obscureText: obscureText,
        decoration: InputDecoration(
          errorText: errorText,
          prefixIcon: Icon(icon),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}


void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Inicio(),
      ));
      break;
  }
}
