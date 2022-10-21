import 'package:flutter/material.dart';
import 'package:flutter_basic/utills/routes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img/resetpassword.png"),
              SizedBox(
                height: 6.0,
              ),
              Text(
                "Reset your password.",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We have sent a 4 digits code on your email/phone.",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "4 digits code.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "New password.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Confirm passwprd.",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, MyRoutes.successResetPasswordRoute);
                },
                child: Text(
                  "Reset password",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
