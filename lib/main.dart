import 'package:flutter/material.dart';
import 'package:vitto/theme/dark_mode.dart';
import 'pages/login_page.dart';
import 'package:vitto/theme/light_mode.dart';

void main(){
  runApp(const vittoApp());
}

class vittoApp extends StatelessWidget{
  const vittoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}