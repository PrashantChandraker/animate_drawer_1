import 'package:animate_drawer_1/drawerScreen.dart';
import 'package:animate_drawer_1/homeSreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
     
     home: Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Stack(children: [
      
        DrawerScreen(),
        HomeScreen(),
      ],),
     ),
    );
  }
}

