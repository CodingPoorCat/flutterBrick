import 'package:flutter/material.dart';
Widget myListTitle(String info,Function onTap){
  return new Container(
      height: 50.0,
      child: new Material(
        color: Colors.white,
        child: new Ink(
          child: new InkWell(
            onTap: (){//不添加click是没有效果的
              print('click');
              onTap();
            },
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                    child: new Padding(
                      padding : new EdgeInsets.only(left: 20.0),
                      child :new Text(info)
                  )),
                new Padding(
                    child: new Icon(Icons.chevron_right),
                    padding: new EdgeInsets.only(right: 20.0)
                ),
              ],
            ),
          ),
        ),
    )
  );

}

