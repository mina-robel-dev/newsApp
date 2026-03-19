 import 'package:flutter/material.dart';
import 'package:news_app_test1/screens/home_page.dart';

void main()
 {
  runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}