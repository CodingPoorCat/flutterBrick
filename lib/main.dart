
import 'package:flutter/material.dart';
import 'package:brick_flutter/home_brick.dart';
import './login/login.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main(){
  runApp(BrickApp());
  // if (Platform.isAndroid) {
  //   // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
  //   SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  // }
}
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