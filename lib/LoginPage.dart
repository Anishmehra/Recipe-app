import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeeapp/HomePage.dart';
import 'package:recipeeapp/RegisterPage.dart';
import 'package:recipeeapp/loginuser.dart';
import 'package:recipeeapp/setstringvalue.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key,});


  TextEditingController loginNameControler = TextEditingController();
  TextEditingController loginPasswordControler = TextEditingController();


 FirebaseAuth Authentication = FirebaseAuth.instance;

Future <void> SignIn(BuildContext context,String emails,String passwords) async{
  try {
  UserCredential _username = await Authentication.signInWithEmailAndPassword(email: emails, password: passwords);
  print("Sign In With ${_username.user?.email}");

  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

  Provider.of<StringProvider>(context, listen: false).usernameclass = loginNameControler.text.toString();
  
} on FirebaseAuthException catch (e) {
  print("Error during the sign in $e");
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));

}
}

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Center(child: Image.asset("assets/foodlogin.png"))), 
                  Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10), 
                  child:Loginuser(
                    hinttext: "Name", obstrure: false, contrler: loginNameControler) 
                  ),
                Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10), 
                child:Loginuser(
                  hinttext: "Password", obstrure: true, contrler: loginPasswordControler)  
                ), 
                SizedBox(height: 20,),
            
                Center(
                  child: ElevatedButton(onPressed: () {
                          SignIn(context, loginNameControler.text.toString(), loginPasswordControler.text.toString());
                   },
                   child: Text("Submit",style: TextStyle(color: Colors.white),), 
                   style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black), 
                    fixedSize: MaterialStatePropertyAll(Size(150,50))
                   ),
                   ),
                ), 
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Text("dont have an account"), 
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) { return
                            RegisterPage();
                          }));
                        },
                        child: Text("Click here",style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                )
                  
              ],
            ),
          ),
    );
  }
}

