import 'package:flutter/material.dart';
import 'package:recipeeapp/Drawer.dart';
import 'package:recipeeapp/Types_of_RecipePackage.dart/Types_of_Recipe.dart';
import 'package:recipeeapp/Types_of_foods.dart';

class NaveBarHoemPage extends StatelessWidget {
   NaveBarHoemPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
            leading:Builder(builder: (context)=>GestureDetector(
            child: Icon(Icons.menu,size: 40,), 
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            )),
            title:Image.asset("assets/food-studio-vector-logo-kitchen-260nw-516201838.webp",height:100,width: 100,), 
            centerTitle: true, 
            actions: [Icon(Icons.search,size: 40,)],  
          ),     
        drawer: MyDrawer(),

        body: Column(
        children: [
         SingleChildScrollView( 
            child: SizedBox(
              height: 70,
              child: Typesoffood()
            ), 
           ),
           Expanded(
            child: TyepsofRecipePackage())
          ]
         ),
    );
  }
}