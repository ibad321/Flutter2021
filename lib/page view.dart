import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/domain/entity.dart';

class Pagevew extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page view bUilder"),
      ),
      body: PageView.builder(
          itemCount: ListEntity.listData.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                  child: Text("Page View ${ListEntity.listData[index].title}")),
            );
          }),
    );
  }
}
