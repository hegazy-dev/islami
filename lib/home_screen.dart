import 'package:flutter/material.dart';
import 'package:islami/widgets/active_nav_bar_icon.dart';
import 'package:islami/widgets/inactive_nav_bar_icon.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
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
    TimeTab(),
  ];

  List<String> backgroundImagesNames = [
    'quran_background',
    'hadeth_background',
    'sebha_background',
    'radio_background',
    'time_background',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/${backgroundImagesNames[currentIndex]}.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/islami_header.png',
                height: MediaQuery.sizeOf(context).height * 0.12,
                fit: BoxFit.fill,
              ),
              Expanded(child: tabs[currentIndex]),
            ],
          ),
        ),
      ),
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
