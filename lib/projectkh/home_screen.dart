import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors%20copy.dart';
import 'package:flutter_project/projectkh/jeddah.dart';
import 'package:flutter_project/projectkh/qassim.dart';
import 'package:flutter_project/projectkh/riyadh_project.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> tabs = const [RiyadhScreen(), QassimScreen(), JeddahScreen()];
  List colors = [
    RiyadhColors.scaffoldColor,
    QassimColors.scaffoldColor,
    JeddahColors.scaffoldColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/riyadhicon.png"),
              height: 30,
              width: 30,
            ),
            label: "الرياض",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/datesicon.png"),
              height: 30,
              width: 30,
            ),
            label: "القصيم,",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/seaicon.png"),
              height: 30,
              width: 30,
            ),
            label: "جدة",
          ),
        ],
        backgroundColor: colors[_currentIndex],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

void main() {
  runApp(MyApp());
}
