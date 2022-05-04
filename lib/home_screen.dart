import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder"),
      ),
      body: Container(
        width: 400,
        height: 500,
        child: LayoutBuilder(builder: (context, constraints) {
          print("constraints: $constraints");
          return Text("あああ");
        })),
      );
  }
}
