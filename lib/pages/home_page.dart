// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/favrate.dart';
import 'package:flutter_basic/pages/home_tab.dart';
import 'package:flutter_basic/pages/login_page.dart';
import 'package:flutter_basic/pages/profile.dart';
import 'package:flutter_basic/utills/emoji_prameter.dart';
import 'package:flutter_basic/utills/routes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final tab = [
  Container(child: HomeTab()),
  Container(child: FavoritePage()),
  Container(child: ProfilePage()),
  Container(child: SettingsPage()),
];

class _HomePageState extends State<HomePage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: tab[index],
      bottomNavigationBar: Container(
        color: Colors.blue[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          child: GNav(
            selectedIndex: index,
            onTabChange: (index) => setState(() {
              this.index = index;
            }),
            backgroundColor: Color(0xFF0D47A1),
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white70,
            padding: EdgeInsets.all(10.0),
            gap: 5,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite_rounded,
                text: "Favorite",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
