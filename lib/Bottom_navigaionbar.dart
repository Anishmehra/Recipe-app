import 'package:flutter/material.dart';

class BottomNavigationbar extends StatelessWidget {
  BottomNavigationbar({super.key,required this.ontap});

void  Function(int)? ontap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       onTap:(value) {
              ontap!(value);
       },
      backgroundColor: Colors.transparent,
      items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home,color: Colors.grey.shade500,), 
        label: "Home",
        ), 
         BottomNavigationBarItem(
        icon: Icon(Icons.card_membership,color: Colors.grey.shade500), 
        label: "card"
        ),
         BottomNavigationBarItem(
        icon: Icon(Icons.camera,color: Colors.grey.shade500), 
        label: "camera"
        ),
         BottomNavigationBarItem(
        icon: Icon(Icons.star,color: Colors.grey.shade500), 
        label: "chief"
        ),
         BottomNavigationBarItem(
        icon: Icon(Icons.person,color: Colors.grey.shade500), 
        label: "profile"
        ),
        ]
    );
  }
}