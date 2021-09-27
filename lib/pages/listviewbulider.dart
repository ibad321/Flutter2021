import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/domain/entity.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Listviewbuilder extends StatelessWidget {
  final Data = ListEntity.listData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: Data.length,
          separatorBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(.4)),
              child: Text("separated Builder"),
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 45,
                width: 45,
                child: Image.asset(Data[index].image),
              ),
              trailing: Icon(FontAwesome.heart_o),
              subtitle: Text("Using This App"),
              title: Text("${Data[index].title}"),
            );
          }),
    );
  }
}
