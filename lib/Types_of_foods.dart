import 'package:flutter/material.dart';
import 'package:recipeeapp/HomePage.dart';
import 'package:recipeeapp/RicpeList/Italian.dart';
import 'package:recipeeapp/RicpeList/Mxican.dart';
import 'package:recipeeapp/RicpeList/chinese.dart';
import 'package:recipeeapp/RicpeList/punjabi.dart';
import 'package:recipeeapp/RicpeList/south_indian.dart';

class Typesoffood extends StatefulWidget {
Typesoffood({Key? key}) : super(key: key);

  @override
  State<Typesoffood> createState() => _TypesoffoodState();
}

class _TypesoffoodState extends State<Typesoffood> {
  
  List items = ["All","Italian","Mexican","Chinese","South Indian","punjabi",];
  List _recipePages = [
     HomePage(),
      ItalianFood(), 
      MexicanFood(), 
      ChieneseFood(), 
      SouthIndianFood(), 
      PunjabiFood()
  ]; 
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(   
        itemCount: items.length,
        
        scrollDirection: Axis.horizontal,
       itemBuilder: (context, index) { 
        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            Navigator.push(context, MaterialPageRoute(builder: (context)=>_recipePages[selectedIndex]));
          },
          child: Container(
              decoration: BoxDecoration(
              color:index == 0 ? Colors.transparent : (selectedIndex == index ? Colors.grey.shade300 : Colors.transparent),
              borderRadius: BorderRadius.circular(10), 
              ),
              width: 140, 
              height: 5,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 9),
               margin: EdgeInsets.only(top: 10,bottom: 5),
                 child: Text(items[index])   
           
          )
        );
      },

    );
}
}