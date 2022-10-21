import 'package:flutter/material.dart';
import 'package:flutter_basic/utills/routes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    'Dev.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Software Developer.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            'assets/img/loginImg2.png',
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'My Profile.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 35,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Messages.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 35,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Requests.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 35,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Location.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 35,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Change info.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 35,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
