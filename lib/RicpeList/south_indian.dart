import 'package:flutter/material.dart';
import 'package:recipeeapp/Drawer.dart';
import 'package:recipeeapp/RicpeList/Reicepsclass.dart';
import 'package:recipeeapp/Types_of_foods.dart';

class SouthIndianFood extends StatelessWidget {
    SouthIndianFood({super.key});

   

  List <SouthIndiaPage> _southIndiaFood = [
      SouthIndiaPage(SouthIndiaImagePath: "assets/dostImage.jpg", SouthIndiaRecipeName: "Dosa", SouthIndiaDiscription: "In its most simple form,\ndosa is crispy and crepe-like\nand is a very popular street\nfood in India")
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            SizedBox(
              height: 70,
              child: Typesoffood()
            ), 
            Image.asset("assets/southindiafood.jpeg",fit: BoxFit.cover,height: 200,width: 200,),
            Padding(
                padding: const EdgeInsets.all(25),
                child: Divider(
                   thickness: 1.5, 
                ),
              ), 

            Expanded(child: ListView.builder(
              itemCount: _southIndiaFood.length,
              itemBuilder: (context, builder)
             {
              SouthIndiaPage _SouthIndia = _southIndiaFood[builder];
              return Container(
               height: 300,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(224, 0, 0, 0)),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                           Column(
                            children: [
                               Container(
                                padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                                child: Column( 
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(_SouthIndia.SouthIndiaRecipeName,
                                          style:TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold ,
                                          color: Colors.grey.shade400),
                                          ), 
                                          SizedBox(height: 10,),
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             ClipRRect(
                                                    borderRadius:BorderRadius.all(Radius.circular(8)) ,
                                                child: Image.asset(_SouthIndia.SouthIndiaImagePath,height: 100,width: 100,fit: BoxFit.cover,)
                                              ),
                                           ],
                                         ),
                                              SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Discription : ",style: TextStyle(color: Colors.grey.shade400),), 
                                              Text(_SouthIndia.SouthIndiaDiscription,style: TextStyle(color: Colors.grey.shade400))
                                            ],
                                          )
                                         
                                        ]
                                  ),
                         
                                ) 
                            ],
                        )
                    ],
                  ),
              );
             }))      
        ],
      ),
    );
  }
}