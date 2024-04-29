import 'package:flutter/material.dart';
import 'package:todoist/pages/home/tabs/calendar.dart';
import 'package:todoist/pages/home/tabs/focused.dart';
import 'package:todoist/pages/home/tabs/index.dart';
import 'package:todoist/pages/home/tabs/profile.dart';
import 'package:todoist/widget/bottom_nav_bar.dart/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentPageIndex = 0;

  void onDestinationSelected(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
          currentPageIndex: currentPageIndex,
          onDestinationSelected: onDestinationSelected),
      body: SafeArea(
        child: [
          // Home page
          const Index(),

          // Calendar page
          const Calendar(),

          // Focused page
          const Focused(),

          // Profile page
          const Profile()
        ][currentPageIndex],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
