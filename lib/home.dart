import 'package:flutter/material.dart';
import 'package:qize/pages/page1/moody.dart';
import 'package:qize/pages/page2/workout.dart';
import 'package:qize/pages/page3/news.dart';

class Home extends StatefulWidget {
  static const String homename = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor:  Color(0xff667085),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/home-05.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/grid-01.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/calendar.png')),
            label: '',
          ),
        ],
        onTap: (index){
          currentindex = index;
          setState(() {});
        },
        currentIndex: currentindex,
      ),
      backgroundColor: Colors.white,
      body: pages[currentindex],
    );
  }
}
List pages =[Moodyscreen(),Workout(),Newsscreen()];