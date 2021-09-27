import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Counter();
  }
}

class _Counter extends State<Counter>{
  int value=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Counter Value is $value",style: TextStyle(fontSize: 30),)),
              RaisedButton(onPressed: (){
                increment();
              
              },
              child: Icon(Icons.add), 
              ),
              RaisedButton(onPressed:(){
                decrement();
               
              },
              child: Icon(Icons.remove),),
              SizedBox(height: 10,),
              InkWell(
              onTap: () {
                doubledecrement();
              },
              child: 
              Container(
                width:300,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Center(child: Text("Double Decrement",style: TextStyle(fontSize: 25),)),
              )
              )

            ],),
      )
    );
  }
  void increment(){
    setState(() {
      value+=1;
    });
  }
  void decrement(){
    setState(() {
      value-=1;
    });
  }
   void doubledecrement(){
    setState(() {
      value-=2;
    });
  }
  
      
      
  }

  