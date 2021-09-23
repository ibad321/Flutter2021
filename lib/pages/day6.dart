import 'package:flutter/material.dart';

class MyStateFullWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyStateFullWidgetState();
  }
}

class _MyStateFullWidgetState extends State<MyStateFullWidget>{
  int value=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 6"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("counter value $value",style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            RaisedButton(onPressed: (){
              increment();
          
            },child: Icon(Icons.add),),
            RaisedButton(onPressed: (){
              decrement();
            },child: Icon(Icons.remove),),
            SizedBox(height: 10,),
            containerbutton(),
            SizedBox(height: 10,),
            container2button()
          
          ],
        ),
      ),
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
  Widget containerbutton(){
    return InkWell(
      onTap:(){
        setState(() {
          value+=2;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          
    
      ),
      child: Text("Double Decrement",style: TextStyle(fontSize: 25),),),
    );
    
  }
  Widget container2button(){
    return InkWell(
      onTap:(){
        setState(() {
          value-=2;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          
    
      ),
      child: Text("Double increment",style: TextStyle(fontSize: 25),),),
    );
    
  }
}
