import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jsk1/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign in to brew crew"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child: RaisedButton(
          child: Text("sign in anon"),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print("error signing in");
            }else {
              print("sign in");
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
