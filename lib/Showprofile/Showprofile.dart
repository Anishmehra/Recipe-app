import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeeapp/setstringvalue.dart';

class showYourProfile extends StatefulWidget {
  showYourProfile({super.key});

  @override
  State<showYourProfile> createState() => _showYourProfileState();
}

class _showYourProfileState extends State<showYourProfile> {

  @override
Widget build(BuildContext context) {

  String nameController = Provider.of<StringProvider>(context).sendnameget ;
   String mobilenumber = Provider.of<StringProvider>(context).sendmobilenumberget; 
    String Dob = Provider.of<StringProvider>(context).sendDOBget ;

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profilelogo2.png",),
            ), 
            SizedBox(height: 10,),
            Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
          ],
        ), 
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ), 
        ),
        toolbarHeight: 150,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(top: 50,left: 20),
             child: Row(
              children: [
               Text("Name :",style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold
               ),
              ), 
               SizedBox(width: 20,),
               Container(
                alignment: Alignment.center,
                height: 50, 
                width: 250,
                margin: EdgeInsets.only(left: 17),
                decoration: BoxDecoration(border: Border.all(width: 2), 
                borderRadius: BorderRadius.circular(10)),
                child: Text(nameController.isNotEmpty ? nameController : ' Edit the name',style:  TextStyle(fontWeight: FontWeight.bold)
               )
               )
              ],
             ),
           ), 
            Padding(
             padding: const EdgeInsets.only(top: 20,left: 20),
             child: Row(
              children: [
               Text("Number :",style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold
               ),), 
               SizedBox(width: 19,),
               Container(
                alignment: Alignment.center,
                
                height: 50, 
                width: 250,
                decoration: BoxDecoration(border: Border.all(width: 2), 
                borderRadius: BorderRadius.circular(10)),
                child: Text(mobilenumber.isNotEmpty ? mobilenumber : 'Edit the number',style: TextStyle(fontWeight: FontWeight.bold),)
               )
              ],
             ),
           ), 
           Padding(
             padding: const EdgeInsets.only(top: 20,left: 20),
             child: Row(
              children: [
               Text("DOB :",style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold
               ),), 
               SizedBox(width: 53,),
               Container(
                alignment: Alignment.center,
                height: 50, 
                width: 250,
                decoration: BoxDecoration(border: Border.all(width: 2), 
                borderRadius: BorderRadius.circular(10)),
                   child: Text(Dob.isNotEmpty ? Dob : 'Edit the Dob',style: TextStyle(fontWeight: FontWeight.bold)
                   )
               )
              ],
             ),
           )
          ],
        ),
      )
    );
  }
}