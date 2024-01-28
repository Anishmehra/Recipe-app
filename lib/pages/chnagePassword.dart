
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipeeapp/loginuser.dart';

class ChangePassword extends StatelessWidget {
   ChangePassword({super.key});

    TextEditingController oldPasswordControler = TextEditingController();
    TextEditingController newPasswordControler = TextEditingController(); 

    FirebaseAuth Authentication = FirebaseAuth.instance;

    Future <void> _ChnagePassword(BuildContext context) async{
          try {
             User? user = Authentication.currentUser;
              if (user == null) {
      print("user is null");
    }
          AuthCredential credential = EmailAuthProvider.credential(
            email: user!.email!,
            password: oldPasswordControler.text.toString());
            await user.reauthenticateWithCredential(credential);

            await user.updatePassword(newPasswordControler.text.toString());

         ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password changed successfully'),
          duration: Duration(seconds: 5),
        ),
      );
          } on Firebase catch (e) { 
             ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Change Password Failed:$e'),
          duration: Duration(seconds: 5),
        ),
      );
      }
    }

  @override
  Widget build(BuildContext context) {
    return Material(
   child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Center(child: Image.asset("assets/foodlogin.png"))), 
                  Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10), 
                  child:Loginuser(
                    hinttext: "OldPasssword", obstrure: true, contrler: oldPasswordControler) 
                  ),
                Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10), 
                child:Loginuser(
                  hinttext: " NewPasaword", obstrure:true , contrler: newPasswordControler)  
                ), 
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(onPressed: () {
                    _ChnagePassword(context);
                  },
                   child: Text("Chnage Paassword",style: TextStyle(color: Colors.white),), 
                   style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black), 
                    fixedSize: MaterialStatePropertyAll(Size(200,50))
                   ),
                   ),
                ),  
              ],
            ),
    )
    );
  }
}