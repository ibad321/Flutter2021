import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                    height: 180, width: 180, child: Image.asset('assets/pic.png')),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Login To Our Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                   Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.5)),
                      child: TextField(
                        decoration: InputDecoration(hintText: "Username or Email"),
                      ),
                    ),
              
                
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5)),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 55,
                  width: double.infinity,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "I forgot my password",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
