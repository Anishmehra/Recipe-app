import 'package:flutter/material.dart';
import 'package:recipeeapp/LoginPage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          Image.asset(
              'assets/cakcgroudimage.jpg',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),

          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                margin: EdgeInsets.only(left: 30,top: 100),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",style: TextStyle(
                      fontSize: 40, 
                      fontWeight: FontWeight.bold, 
                      color:Colors.grey
                    ),), 
                    Text("To",style: TextStyle(
                      fontSize: 40, 
                      fontWeight: FontWeight.bold,
                       color: Color.fromARGB(172, 255, 255, 255)
                    ),),  
                    Text("Food Studio",style: TextStyle(
                      fontSize: 40, 
                      fontWeight: FontWeight.bold, 
                      color:  Color.fromARGB(172, 255, 255, 255,)
                    )
                  ), 
                  ],
                ),
              ),
              SizedBox(height: 200,), 
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration( 
                      color: Colors.grey.shade600,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(50) ,bottomLeft:Radius.circular(50) )
                    ),
                    child: GestureDetector(
                      onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
                      },
                      child:Row(
                        children: [
                          SizedBox(width:20,),
                            Text("Enter",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),), 
                        ]
                      ),
                    ),
        
                  )
                ],
              )
              
          ],
        ),
        ]
      ) ,
    );
  }
}