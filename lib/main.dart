import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:schools_maps/UX/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     debugShowCheckedModeBanner: false,
     home: LoginPage(),
    );
  }
}
