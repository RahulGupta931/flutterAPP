import 'package:flutter/material.dart';
import 'package:flutter_basic/utills/routes.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset("assets/img/success.png"),
            Text(
              "Your password has been reset sucessfully!",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Now login with new password.",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
