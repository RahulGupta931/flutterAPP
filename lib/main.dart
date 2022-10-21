import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/favrate.dart';
import 'package:flutter_basic/pages/forget_password_page.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'package:flutter_basic/pages/login_page.dart';
import 'package:flutter_basic/pages/notification.dart';
import 'package:flutter_basic/pages/profile.dart';
import 'package:flutter_basic/pages/resetPassword.dart';
import 'package:flutter_basic/pages/settings.dart';
import 'package:flutter_basic/pages/sign_up.dart';
import 'package:flutter_basic/pages/successResetPassword.dart';
import 'package:flutter_basic/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Basic());
}

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LogeinPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogeinPage(),
        MyRoutes.signupRoute: (context) => SignUpPage(),
        MyRoutes.forgetPasswordRoute: (context) => ForgetPassword(),
        MyRoutes.resetPasswordRoute: (context) => ResetPassword(),
        MyRoutes.successResetPasswordRoute: (context) => SuccessResetPassword(),
        MyRoutes.loginRoute: (context) => LogeinPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.profileRoute:(context) => ProfilePage(),
        MyRoutes.settingsRoute:(context) => SettingsPage(),
        MyRoutes.notificationRoute:(context) => NotificationsPage(),
        MyRoutes.favoriteRoute:(context) => FavoritePage(),

      },
    );
  }
}
