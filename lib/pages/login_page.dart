import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        onPressed: () {
                          /**
                           * Going from one page to another page
                           */
                          //Navigator.push(context, route)
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
