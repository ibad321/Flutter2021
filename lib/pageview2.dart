import 'package:flutter/material.dart';
import 'package:flutter_application_3/page%20view.dart';
import 'package:flutter_application_3/pages/domain/entity.dart';

class Pageview2 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pageview"),
      ),
      body: PageView.builder(itemCount: ListEntity.listData.length,
      itemBuilder: (context,index){
        return Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
          child: Center(child: Text("$index")),

        );
      },
      ),
    );
  }
}