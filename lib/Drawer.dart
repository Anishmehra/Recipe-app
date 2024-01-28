import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeeapp/HomePage.dart';
import 'package:recipeeapp/Showprofile/Showprofile.dart';
import 'package:recipeeapp/setstringvalue.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    String username = Provider.of<StringProvider>(context).name;
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        children: [
                  Column(
                    children: [
                       DrawerHeader(
                        child: Column(
                          children: [ 
                            CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/download.jpeg"),
                          ), 
                          Text("Hey..${username.isNotEmpty ? username : 'username' }",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),), 
                          ],
                        ) 
                      ), 
                       Padding(
                        padding: EdgeInsets.only(left:10), 
                          child: GestureDetector(
                            onTap:  () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                            },
                             child: const ListTile(
                            leading: Icon(Icons.home),
                            title: Text("H O M E"),
                            
                          ),
                          ), 
                          ),
                
                       Padding(padding: EdgeInsets.only(left: 10), 
                              child: GestureDetector(
                              child: ListTile(  
                            leading: Icon(Icons.person),
                            title: Text("P R O F I L E"),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> showYourProfile()));
                            },
                            ),
                          )
                          ), 
                          
                       Padding(padding: EdgeInsets.only(left: 10), 
                              child: GestureDetector(
                              child: ListTile(  
                            leading: Icon(Icons.info,),
                            title: Text("A B O U T"),
                            onTap: () {},
                            ),
                          )
                          ),
                          SizedBox(height: 200,),           
                       Padding(padding: EdgeInsets.only(left:30),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Text("Logout",style: TextStyle(fontSize: 20),), 
                              Icon(Icons.logout)
                            ],
                          ),
                         )
                        )                 
                    ],
                  ), 
                ],
      ),
    );
  }
}