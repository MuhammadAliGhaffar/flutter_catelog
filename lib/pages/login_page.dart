import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Login Page",
            style: TextStyle(fontSize: 25, color: Colors.green,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
