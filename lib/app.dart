import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/main_bottom_nav_screen.dart';
import 'package:ostad_2/ui/screens/splash_screen.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainBottomNavScreen(),
    );
  }
}