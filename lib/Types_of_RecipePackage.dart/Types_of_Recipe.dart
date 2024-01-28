import 'package:flutter/material.dart';
import 'package:recipeeapp/Types_of_RecipePackage.dart/Recipes_calss.dart';

class TyepsofRecipePackage extends StatelessWidget {
   TyepsofRecipePackage({super.key});


  List <Recipes> _discription = [             
      Recipes(imagPath: "assets/chef-prepares-salad-pepper-mill-260nw-1132427390.webp", headTitle: "Cook something\nNew", disciption: "THis is very Healthy\nfood and tasty", Recipescount: "90 Recipes", chefsnumber: "15 chef"), 
      Recipes(imagPath: "assets/download (1).jpeg", headTitle: "Best of 2020", disciption: "cock recipes for special\noccasion", Recipescount: "26 Recipes", chefsnumber: "8 chef"), 
      Recipes(imagPath: "assets/blankrecipes.webp", headTitle:" Best\nDishes", disciption:"I server best dishes for\neverytime any place" , Recipescount: "200+ Recipes", chefsnumber:"100 chef")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: _discription.length,
      itemBuilder: (context, builder) {
     Recipes _recipes = _discription[builder];
        return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top:5,),
      
      child: Column(
        children: <Widget>[
            Stack(
              children: [
               ClipRRect(
                borderRadius: BorderRadius.circular(20),
                 child: Container(
                  height: 200, 
                  width: 500,
                  child: Image.asset(_recipes.imagPath,
                  fit: BoxFit.cover,),
                 ),
               ), 
              Positioned(
                left: 10,
                top: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      _recipes.headTitle,
                      style: TextStyle(
                          color: Colors.white, 
                          fontSize: 20, 
                          fontWeight: FontWeight.bold
                      ),),
                    ), 
                    Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      _recipes.disciption,
                      style: TextStyle(
                          color: Colors.white, 
                          fontSize: 10, 
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 5),
                          child: Image.asset("assets/cupcake.jpeg",height: 20,width: 20,
                          )
                        ),
                        SizedBox(width: 10,),
                        Text(_recipes.Recipescount,style: TextStyle(color: Colors.white),)
                      ],
                    ) , 
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 5),
                          child: Image.asset("assets/chefcap.png",height: 20,width: 20,
                          )
                        ),
                        SizedBox(width: 10,),
                        Text(_recipes.chefsnumber,style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                )
                )
              ]
            ) 
        ],
          )
        );
      }
    );
  }
  }