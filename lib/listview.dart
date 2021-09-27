import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class List extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List"),),
      body: ListView(
        physics: ScrollPhysics(),
        
        children: [
          ListTile(
            trailing: Icon(FontAwesome.heart_o,size: 40,),
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle
              )
            ,),
            title: Text("Country"),subtitle: Text("Pakistan"),
          ),
          ListTile(
            trailing: Icon(FontAwesome.heart_o,size: 40,),
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle
              )
            ,),
            title: Text("District"),subtitle: Text("Malakand"),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("This Is Dummy Heading"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}