import 'package:flutter/material.dart';
import 'package:project/screens/home/home_screen.dart';
import 'package:project/screens/home/login_screen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), 
        '/home':(context)=> HomeScreen()},
    );
  }
}