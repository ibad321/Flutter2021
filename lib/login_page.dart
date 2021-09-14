import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                  height: 180,
                  width: 180,
                  child: Image.asset("assets/pic.png")),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Log in to our page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: const TextField(
                  decoration: InputDecoration(hintText: "Username Or Email"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: const TextField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              // ignore: sized_box_for_whitespace
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                height: 55,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "i forgot my password",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
