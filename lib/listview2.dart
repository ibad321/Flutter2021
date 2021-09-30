
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Listview2 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
        ListTile(
        trailing: Icon(FontAwesome.heart_o,size:50,),
          title: Text("Heading",style: TextStyle(fontSize: 25),),
          subtitle: Text ("Subtitle",style: TextStyle(fontSize: 25),),
           ),
           ListTile(
        trailing: Icon(FontAwesome.heart_o,size:50,),
          title: Text("Heading",style: TextStyle(fontSize: 25),),
          subtitle: Text ("Subtitle",style: TextStyle(fontSize: 25),),
           ),
           ListTile(
        trailing: Icon(FontAwesome.heart_o,size:50,),
          title: Text("Heading",style: TextStyle(fontSize: 25),),
          subtitle: Text ("Subtitle",style: TextStyle(fontSize: 25),),
           ),
           ListTile(
        trailing: Icon(FontAwesome.heart_o,size:50,),
          title: Text("Heading",style: TextStyle(fontSize: 25),),
          subtitle: Text ("Subtitle",style: TextStyle(fontSize: 25),),
           ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               child: Text("heading isssssssssssssssss",style:TextStyle(fontSize: 30),),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(height: 100,
             decoration: BoxDecoration(color: Colors.red),),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(fontSize: 25),),
            ),
          )
      ],),
    );
  }
}