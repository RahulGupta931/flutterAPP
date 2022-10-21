import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initstate() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: TextStyle(),
            name: 'Categories',
            selectedStyle: TextStyle(),
          ),
          HomePage()),
    ];
  }

  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blue.shade900,
      // ignore: prefer_const_literals_to_create_immutables
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
