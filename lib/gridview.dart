import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/domain/entity.dart';

class Gridview extends StatelessWidget {
  final data = ListEntity.listData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          color: index == 1 ? Colors.grey : Colors.red,
          child: Center(
            child: Column(children: [
              Container(
                  height: 140,
                  width: 140,
                  child: Image.asset("${data[index].image}")),
              Text("${data[index].title}")
            ]),
          ),
        );
      },
    ));
  }
}
