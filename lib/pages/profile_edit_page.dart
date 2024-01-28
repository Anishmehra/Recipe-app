import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeeapp/pages/chnagePassword.dart';
import 'package:recipeeapp/setstringvalue.dart';

class editPage extends StatefulWidget {
   editPage({super.key});

  @override
  State<editPage> createState() => _editPageState();
}

class _editPageState extends State<editPage> {

   TextEditingController nameedting = TextEditingController();
   TextEditingController mobilenumbereditng = TextEditingController();
  TextEditingController DateOfBirth = TextEditingController();

 void sendDetails(){
    try {
      
     Provider.of<StringProvider>(context, listen: false).sendnameset = nameedting.text.toString() ;
     Provider.of<StringProvider>(context, listen: false).sendmobilenumberset = mobilenumbereditng.text.toString();
     Provider.of<StringProvider>(context, listen: false).sendDOBset = DateOfBirth.text.toString();

      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Details Updated',style: TextStyle(color: Colors.white),),
        duration: Duration(seconds: 2),      
      ),
    ); 
    } catch (e) {
      print(e); 
    }
    
  }

   Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        DateOfBirth.text = picked.toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)
            ),
             child:Text("Edit Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 10),
          child: TextField(
            controller:nameedting ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))), 
                  labelText: 'Name',
                  prefixStyle: TextStyle(color: Colors.black), 
                  hintText: "Edit the name",
                  prefixIcon: Icon(Icons.people)
                ),  
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
          child: TextField(
                controller: DateOfBirth ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: 'Date of Birth',
                  prefixStyle: TextStyle(color: Colors.black),
                  hintText: "Edit the date of birth",
                  prefixIcon: Icon(Icons.calendar_today),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                ),
          ),
        ), 
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
          child: TextField(
            controller:mobilenumbereditng,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))), 
                  labelText: 'MobileNumber',
                  prefixStyle: TextStyle(color: Colors.black), 
                  hintText: "Edit the Mobile number",
                  prefixIcon: Icon(Icons.people)
                ),  
          ),
        ),
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 20,left: 20),
             child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangePassword()));
              },
                            child: Text(
                              "ChangePassword..?",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                                ),
                              )
                            ),
           ),
         ],
       ), 
        SizedBox(height: 20,), 
        GestureDetector(
          onTap: sendDetails,
          child: Container(
            height: 50, 
            width: 150, 
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30)
              ),
              child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        )
        ],
      ),
    );
  }
}