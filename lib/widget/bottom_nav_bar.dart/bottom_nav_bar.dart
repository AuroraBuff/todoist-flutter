import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {super.key,
      required this.currentPageIndex,
      required this.onDestinationSelected});
  final int currentPageIndex;
  final Function(int index) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
      indicatorColor: Colors.transparent,
      selectedIndex: currentPageIndex,
      destinations: const [
        /**
         * 首页
         */
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Index',
        ),
        /**
         * 日历
         **/
        NavigationDestination(
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Calendar',
        ),
        /**
         * 专注
         */
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.messenger_sharp),
          ),
          label: 'Focused',
        ),
        /**
         * 个人中心
         */
        NavigationDestination(
          icon: Badge(
            label: Text('3'),
            child: Icon(Icons.messenger_sharp),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
