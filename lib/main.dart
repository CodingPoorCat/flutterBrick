
import 'package:flutter/material.dart';
import 'package:brick_flutter/home_brick.dart';
import './login/login.dart';

void main() => runApp(BrickApp());
class BrickApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      routes: <String,WidgetBuilder>{
        '/': (BuildContext context) => new Home(),
        '/home': (BuildContext context) => new Home(),
        '/login' : (BuildContext context) => new Login()
      },
      title : 'Brick',
      color: Color(0XFFF2F2F2),
    );
  }
}