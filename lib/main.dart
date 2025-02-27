

import 'package:flutter/material.dart';
import 'package:green_space_app/theme/dark_mode.dart';
import 'package:green_space_app/theme/light_mode.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:LoginPage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
  }