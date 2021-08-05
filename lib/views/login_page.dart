import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = 'login_page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Hola Mundo'),
        ),
      ),
    );
  }
}
