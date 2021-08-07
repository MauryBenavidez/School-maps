import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = 'login_page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.indigo, Colors.blue])),
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
                Text(
                  'Inicia sesión',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Regístrate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            _textFielName(),
            SizedBox(
              height: 15.0,
            ),
            _textFielCorreo(),
            SizedBox(
              height: 15.0,
            ),
            _textFielPassword(),
            SizedBox(
              height: 25.0,
            ),
            _buttonLostPassword(),
            SizedBox(
              height: 25.0,
            ),
            _buttonSignUp(),
          ],
        )),
      ),
    );
  }

  Widget _textFielName() {
    return _textFieldGeneral(
      labelText: "Nombre",
      hintText: "Mauricio Benavidez",
      icon: Icons.person_outline,
      onChanged: (value) {},
      obscureText: false,
    );
  }

  Widget _textFielCorreo() {
    return _textFieldGeneral(
      labelText: "Correo",
      hintText: "ejemplo@gmail.com",
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {},
      icon: Icons.email_outlined,
      obscureText: false,
    );
  }

  Widget _textFielPassword() {
    return _textFieldGeneral(
      labelText: 'Contraseña',
      onChanged: (value) {},
      icon: Icons.lock_outline_rounded,
      obscureText: true,
      hintText: '',
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

  Widget _buttonSignUp() {
    // ignore: deprecated_member_use
    return RaisedButton(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 75.0,
        vertical: 10.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text('Iniciar sesion',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 25.0,
          )),
      onPressed: () {},
    );
  }
}

class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function onChanged;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  const _textFieldGeneral({
    this.labelText,
    this.hintText,
    this.onChanged,
    this.icon,
    this.obscureText,
    this.keyboardType,
  });

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
          prefixIcon: Icon(icon),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
