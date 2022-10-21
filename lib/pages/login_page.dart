// ignore_for_file: prefer_const_constructors, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'package:flutter_basic/utills/routes.dart';

class LogeinPage extends StatelessWidget {
  const LogeinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            // ignore: duplicate_ignore
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "assets/img/loginimg1.png",
                fit: BoxFit.cover,
              ),
              // ignore: duplicate_ignore, duplicate_ignore
              Text(
                "Login Here.",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Please enter your details.",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter your username.",
                        labelText: "Username.",
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length < 6) {
                          return "Password length should be more then 6";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password.",
                        labelText: "Password.",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextButton(
                    child: Text(
                      "forget password.",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, MyRoutes.forgetPasswordRoute);
                    },
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Sign Up.",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.signupRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
