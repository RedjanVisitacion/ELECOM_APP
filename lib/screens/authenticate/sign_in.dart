import 'package:flutter/material.dart';
import 'package:new_project/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        elevation: 0.0,
        title: Text('Sign in to Elecom App'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print('Error signing in');
            }else{
              print('Sign in $result');
            }
          },
          child: Text('Sign in anonymously'),
        ),
      ),
    );

  }
}