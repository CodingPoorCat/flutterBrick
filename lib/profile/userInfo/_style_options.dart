import 'package:flutter/material.dart';
import '../../common/_listTitle.dart';
Widget optionsList(context)  {
  return new Container(
    child: Column(
      children: <Widget>[
        new Container(
          color: Colors.white,
          margin: new EdgeInsets.only(bottom: 10.0),
          child: new Column(
            children: <Widget>[
              myListTitle('最新消息',
                  (){
                      Navigator.of(context).pushNamed('/login');
//                    Navigator.of(context).push(
//                      new PageRouteBuilder(
//                          transitionsBuilder: (BuildContext context,
//                              Animation<double> animation,Animation<double> secondaryAnimation,Widget child){
//                            return new FadeTransition(
//                              child: child,
//                                opacity: animation,
////                                child: new RotationTransition(
////                                  turns: new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
////                                  child: child,
////                                )
//                            );
//                          },
//                          pageBuilder: (
//                            BuildContext context,
//                            Animation<double> animation,
//                            Animation<double> secondaryAnimation){return new Login();})
//                      );
                  }),
              new Divider(indent: 20.0,height: 1.0),
              myListTitle('浏览历史',()=>{}),
            ],
          ),
        ),
        new Container(
          color: Colors.white,
          margin: new EdgeInsets.only(bottom: 10.0),
          child: new Column(
            children: <Widget>[
              myListTitle('消息中心',()=>{}),
              new Divider(indent: 20.0,height: 1.0),
              myListTitle('客服',()=>{}),
            ],
          ),
        ),
        myListTitle('关于我们',()=>{})
      ],
    ),
  );
}