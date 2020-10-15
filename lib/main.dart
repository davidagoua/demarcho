import 'package:demarcho/pages/login.dart';
import 'package:demarcho/pages/prop/dashboard.dart';
import 'package:demarcho/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demarcho',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'login',
      routes:{
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'prop/dahsboard': (context) => Dashboard()
      },
    );
  }
}
