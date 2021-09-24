import 'package:flutter/material.dart';

class Day7 extends StatefulWidget {
  @override
  _Day7State createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  String dataa = "";
  double h = 100;
  double w = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            color: Colors.yellow,
            width: w,
            height: h,
            transform: Matrix4.rotationZ(h),
            curve: Curves.easeInOut,
            duration: Duration(
              milliseconds: 300,
            ),
          ),
          Text(
            "data is = $dataa",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {
                call();
              },
              child: Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                    child: Text(
                  "Click Here",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  void call() {
    setState(() {
      h += 50;
      w += 50;
      dataa = "call method is exuted.second method is ${caluculate(1, 10)}";
    });
  }

  int caluculate(int num1, int num2) {
    return (num1 + num2);
  }
}
