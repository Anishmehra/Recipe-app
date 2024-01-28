import 'package:flutter/material.dart';
import 'package:recipeeapp/Drawer.dart';
import 'package:recipeeapp/RicpeList/Reicepsclass.dart';
import 'package:recipeeapp/Types_of_foods.dart';

class PunjabiFood extends StatelessWidget {
   PunjabiFood({super.key});

  List <PunjabiPage> _punjabiFood =  [
        PunjabiPage(PunjabiImagePath: "assets/lassi.jpeg", PunjabiRecipeName: "Lassi", PunjabiDiscription: "the most popular and traditional\nyogurt-based drink in India.")
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
            Image.asset("assets/punjabifoodlogo.png",fit: BoxFit.cover,height: 200,width: 200,), 
            Padding(
                padding: const EdgeInsets.all(25),
                child: Divider(
                   thickness: 1.5, 
                ),
              ),
            Expanded(
              child: ListView.builder(
              itemCount: _punjabiFood.length,
              itemBuilder: (context, builder)
             {
              PunjabiPage _punjabi = _punjabiFood[builder];
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
                                          Text(_punjabi.PunjabiRecipeName,
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
                                                child: Image.asset(_punjabi.PunjabiImagePath,height: 100,width: 100,fit: BoxFit.cover,)
                                              ),
                                           ],
                                         ),
                                              SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Discription : ",style: TextStyle(color: Colors.grey.shade400),), 
                                              Text(_punjabi.PunjabiDiscription,style: TextStyle(color: Colors.grey.shade400))
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