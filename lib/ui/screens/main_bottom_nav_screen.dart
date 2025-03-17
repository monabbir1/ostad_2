import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/tasks/new_task_screens.dart';

import '../widget/tmAppbar.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    NewTaskScreens(),
    NewTaskScreens(),
    NewTaskScreens(),
    NewTaskScreens(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppbar(),
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
          onDestinationSelected: (index){
            _selectedIndex = index;
          setState(() {});
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.new_label_outlined), label: 'New'),
            NavigationDestination(icon: Icon(Icons.circle_outlined), label: 'Progress'),
            NavigationDestination(icon: Icon(Icons.done_outline), label: 'Completed'),
            NavigationDestination(icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
          ]),
    );
  }
}