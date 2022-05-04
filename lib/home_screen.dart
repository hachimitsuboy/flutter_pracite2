import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        print("constraints: $constraints");
        if (constraints.maxWidth <= 375.0) {
          print("縦画面ですね");
          return const Align(
            alignment: Alignment.bottomLeft,
            child: Text("縦画面", style: TextStyle(fontSize: 25.0)),
          );
        } else {
          print("横画面ですね");
          return const Align(
            alignment: Alignment.bottomRight,
            child: Text("横画面", style: TextStyle(fontSize: 35.0)),
          );
        }
      }),
    );
  }
}
