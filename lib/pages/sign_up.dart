import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_basic/pages/home_page.dart';
import 'package:flutter_basic/utills/routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  "assets/img/loginImg2.png",
                  fit: BoxFit.cover,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
              ),
              // ignore: prefer_const_constructors
              Text(
                "SignUp Here.",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  hintText: "enter your name.",
                  labelText: "Name.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "enter your 10 Digits.",
                  labelText: "Mobile no.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "give unique name.",
                  labelText: "Create Username.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "give 10 digits no.",
                  labelText: "Create Password.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "re-enter Password.",
                  labelText: "Confirm Password.",
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
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              TextButton(
                child: Text(
                  "Having already an account.",
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
