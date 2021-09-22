import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/logo.png',
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Signup",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  
                  child: Icon(FontAwesome.facebook)),
                  Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  
                  child: Icon(FontAwesome.google)),
                  Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  
                  child: Icon(FontAwesome.twitter)),
                  
              ],
            ),
            SizedBox(height: 20,),
            Divider(thickness: 2,),
               SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "username",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    alignment:Alignment.center,
                    height: 50,

                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Text("Signup",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
            
          ],
        ),
      ),
    );
  }
}
