import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext buildContext) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                        validator: (value) {
                          /**
                           * Gives value from TextField you can validate
                           */
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          } else if (value.length >= 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          /**
                           * Gives value from TextField you can validate
                           */
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }

                          return null;
                        },
                      ),
                      SizedBox(height: 40),
                      /**
                       * Custom Container with Animation
                       */
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 40 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changedButton ? 40 : 150,
                            height: 40,
                            alignment: Alignment.center,
                            child: changedButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                      /**
                       * Custom Container without Animation
                       */
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Container(
                      //     width: 150,
                      //     height: 40,
                      //     alignment: Alignment.center,
                      //     child: Text(
                      //       "Login",
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //     decoration: BoxDecoration(
                      //         color: Colors.deepPurple,
                      //         borderRadius: BorderRadius.circular(8.0)),
                      //   ),
                      // ),
                      // ElevatedButton(
                      //     child: Text("Login"),
                      //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      //     onPressed: () {
                      //       /**
                      //        * Going from one page to another page
                      //        */
                      //       //Navigator.push(context, route)
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //     })
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
