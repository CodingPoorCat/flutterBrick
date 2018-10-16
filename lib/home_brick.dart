import 'package:flutter/material.dart';
import './profile/userInfo/user.dart';
import './home/navigation_home.dart';
import './expert/expert.dart';
class Home extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentindex = 0;
  Widget build(BuildContext context){
    final List<Widget> _navigationPages = 
    [
      PageHome(),
      new Expert(),
      new UserProfile()];
    void onTabTapped(int index){
      setState(() {
          this._currentindex = index;
        });
    }
    return Scaffold(
      
      body: _navigationPages[_currentindex],
      bottomNavigationBar : BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentindex,
        items : [
          BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Expert'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
        ]
      )
    );
  }
}