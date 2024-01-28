import 'package:flutter/material.dart';
import 'package:recipeeapp/LoginPage.dart';
import 'package:recipeeapp/loginuser.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  TextEditingController UserNameControler = TextEditingController();
  TextEditingController PasswordControler = TextEditingController();
  TextEditingController reEnterPAsswordControler = TextEditingController();

  FirebaseAuth Authentication = FirebaseAuth.instance;

Future<void>  _registerPage() async{

          Authentication.createUserWithEmailAndPassword(
            email: UserNameControler.text.toString(),
            password: PasswordControler.text.toString());
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
                    hinttext: "UserName", obstrure: false, contrler: UserNameControler) 
                  ),
                Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10), 
                child:Loginuser(
                  hinttext: " Enter Password", obstrure: true, contrler: PasswordControler)  
                ), 
               
            
                Center(
                  child: ElevatedButton(onPressed: () {
                    _registerPage();
                  },
                   child: Text("Register",style: TextStyle(color: Colors.white),), 
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
                      Text("allready have an account"), 
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) { return
                            LoginPage();
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

