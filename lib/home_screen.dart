import 'package:flutter/material.dart';
import 'package:islami/active_nav_bar_icon.dart';
import 'package:islami/inactive_nav_bar_icon.dart';
import 'package:islami/tabs/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTAb(),
    SebhaTab(), 
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        backgroundColor: Color(0xFFE2BE7F),
        type: .fixed,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF202020),
        items: [
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'quran'),
            activeIcon: ActiveNavBarIcon(iconName: 'quran'),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'hadith'),
            activeIcon: ActiveNavBarIcon(iconName: 'hadith'),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'sebha'),
            activeIcon: ActiveNavBarIcon(iconName: 'sebha'),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'radio'),
            activeIcon: ActiveNavBarIcon(iconName: 'radio'),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'time'),
            activeIcon: ActiveNavBarIcon(iconName: 'time'),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
