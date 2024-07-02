import 'package:agent/ui/HomeTab.dart';
import 'package:flutter/material.dart';

class  HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  @override
  State <HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State< HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          toolbarHeight: 120,

          title: Text(
            "الوكاله",
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications, //must use badge Package
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Colors.transparent),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTabIndex,
        onTap: (index){
          setState(() {
            selectedTabIndex= index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Image(
                  image: AssetImage('assets/images/icons8-keypad-24.png')),
              label: 'الرئيسية'), //white
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Image(
                  image: AssetImage('assets/images/icons8-chat-24 (1).png')),
              label: 'عملائي'), //black
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon:
              Image(image: AssetImage('assets/images/icons8-timer-24.png')),
              label: 'احداث'), //black
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Image(
                  image: AssetImage('assets/images/icons8-person-24.png')),
              label: 'صفحتي'), //black
        ],
      ),
      body: tabs[selectedTabIndex],   //list of widegt (Arry of widget)
    );
  }

  var tabs=[
    HomeTab(),

    //arrange it you idiot!!!
  ];}
