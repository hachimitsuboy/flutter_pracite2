import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LayoutBuilder_align_pracitce",
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}
