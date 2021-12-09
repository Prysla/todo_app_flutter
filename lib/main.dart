import 'package:flutter/material.dart';

import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //This HomeView() is a class in home_view.dart
      home: const HomeView(),
    );
  }
}
