import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeeapp/Drawer.dart';
import 'package:recipeeapp/LoginPage.dart';
import 'package:recipeeapp/pages/Pages_classes.dart';
import 'package:recipeeapp/pages/profile_edit_page.dart';
import 'package:recipeeapp/setstringvalue.dart';

class profilePage extends StatelessWidget {
   profilePage({super.key});

  List <ProfilePage> _profilepageList = [
  ProfilePage(IconPath: "assets/savedIcon.png", nameofFunctionaly: "Saved Recipes"), 
  ProfilePage(IconPath: "assets/png-transparent-chef-s-uniform-computer-icons-hat-svg-food-cooking-cook.png", nameofFunctionaly: "Super Plan"),
  ProfilePage(IconPath: "assets/1996.png", nameofFunctionaly: "change Launguage"), 
  ProfilePage(IconPath: "assets/abouticon.png", nameofFunctionaly: "About")
  ];
  
@override
Widget build(BuildContext context) {
String value = Provider.of<StringProvider>(context).username;
String name = Provider.of<StringProvider>(context).name;
    return Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)
            ),
             child:Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ), 
          centerTitle: true,
          actions: [
            Padding(padding: EdgeInsets.only(right: 5), 
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => editPage()));

              },
              child: Text("Edit",style: TextStyle(fontSize: 20),),
              ),
            ),
          ],  
          backgroundColor: Colors.transparent,
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/profesionalman.jpg"),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(name.isNotEmpty ? name : 'Edit name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: const Color.fromARGB(163, 0, 0, 0)),) ,
                    Text(value,style: TextStyle(color: const Color.fromARGB(163, 0, 0, 0))), 
                  ],
                ),
              ), 
             SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: _profilepageList.length,
                  itemBuilder: (context, builder){
                    ProfilePage _profilepage = _profilepageList[builder];
                    return Container(
                     height: 40,
                      margin: EdgeInsets.all(20),
                      
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          
                          children: [
                            Center(child: Image.asset(_profilepage.IconPath,height: 20,width: 20,fit: BoxFit.cover,)), 
                            SizedBox(width: 10,),
                            Text(_profilepage.nameofFunctionaly,style: TextStyle(color: const Color.fromARGB(163, 0, 0, 0)),),
                           Spacer(),
                            Icon(Icons.arrow_right,color: const Color.fromARGB(163, 0, 0, 0)),
 
                          ],
                        ),
                      ),
                     
                    );
                }),
              )
          ],
        ),
    );
  }
}