import 'package:flutter/material.dart';
import 'package:recipeeapp/Bottom_navigaionbar.dart';
import 'package:recipeeapp/pages/HomeNavbarpage.dart';
import 'package:recipeeapp/pages/camera.dart';
import 'package:recipeeapp/pages/cart_page.dart';
import 'package:recipeeapp/pages/chief.dart';
import 'package:recipeeapp/pages/profile_page.dart';

// import 'Types_of_foods.dart';

class HomePage extends StatefulWidget {
HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


List<Widget> _pages = [
  NaveBarHoemPage(),
  cartPage(), 
  camera(),
  chiefpage(), 
  profilePage(),
  ];

  int selectedIndex = 0;

  void changeBottomBar(int index) {
    
          setState(() {
            selectedIndex = index;
          });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationbar(
        ontap: (value) {
            changeBottomBar(value);
        },
      ),

      body:_pages[selectedIndex],
      );
  
  }
}