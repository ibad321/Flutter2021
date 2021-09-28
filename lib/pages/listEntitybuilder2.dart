import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'domain/entity.dart';

class Listviewbuild2 extends StatelessWidget {
  final Data = ListEntity.listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.separated(
        itemCount: Data.length,
        separatorBuilder: (context,index){
          return Container(
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
            child: Text("Advitizement"),
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 45,
              width: 45,
              child: Image.asset(("${Data[index].image}")),
            ),
            trailing: Icon(FontAwesome.heart_o),
            subtitle: Text("Subheading"),
            title: Text("${Data[index].title}"),
          );
        },
      ),
    );
  }
}
