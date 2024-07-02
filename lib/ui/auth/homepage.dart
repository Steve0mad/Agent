import 'package:agent/ui/auth/dashboardpage.dart';
import 'package:agent/ui/auth/projetpage.dart';
import 'package:agent/ui/auth/taskmanagmnetpagee.dart';
import 'package:agent/ui/auth/teammangementpage.dart';
import 'package:flutter/material.dart';
import 'calenderpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agency App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    DashboardPage(),
    ProjectDetailsPage(),
    TaskManagementPagee(),
    TeamMembersPage(),
    CalendarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(),
        child: BottomNavigationBar(
        backgroundColor: Colors.brown,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.brown,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Team'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
        ],
      ),
    ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}