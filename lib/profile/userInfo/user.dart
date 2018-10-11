import 'package:flutter/material.dart';
import '_style_card.dart';
import '_style_options.dart';

class UserProfile extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _PageUserProfile();
  }
}

class _PageUserProfile extends State<UserProfile>{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:Text('用户'),
        backgroundColor: Colors.red,
        centerTitle: true, // 标题居中
        // 去掉阴影
        elevation: 0.0,
      ),
      body: new ListView(
        children: <Widget>[
          userCard,
          optionsList(context)
        ],
      ),

    );
  }
}