import 'package:flutter/material.dart';
import 'package:flutter_application_3/gridview.dart';
import 'package:flutter_application_3/pages/domain/entity.dart';
class Gridview2 extends StatelessWidget {
  final Data=ListEntity.listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        
      ),
      itemCount: 3,
      itemBuilder: (context,index){
        return Card(
          color: Colors.purple,
          child: Center
          (child: Column(
            children: [
              Container(
                height: 160,
                width: 160,
                child: Image.asset("${Data[index].image}")),
            Center(child: Text("${Data[index].title}"))]
            )),
        );
      },
      
      
    ));
  }
}