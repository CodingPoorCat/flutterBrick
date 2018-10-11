import 'package:flutter/material.dart';
import 'dart:ui';

Widget userCard = new SizedBox(
  child: new Stack(
    children: <Widget>[
      new Positioned(
        child: new Container(
          color: Colors.red,
          height: 90.0,
          width: window.physicalSize.width,
        ),
        left: 0.0,
        top: 0.0,
      ),
      new Card(
          elevation : 2.0,
          child: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(right: 20.0),
                      child: new CircleAvatar(
                        backgroundImage: new NetworkImage(
                          'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg',
                        ),
                      ),
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                              color: const Color(0xcc000000),
                              offset: new Offset(0.0, 1.0),
                              blurRadius: 4.0,
                            ),
                          ]),
                      width: 60.0,
                      height: 60.0,
                    ),
                    new Expanded(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text("用户名"),
                          new Text("砖头：0.00000")
                        ],
                      ),
                    ),
                    new Icon(Icons.chevron_right)
                  ],
                ),
                new Container(
                  margin: new EdgeInsets.only(top:10.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new InkWell(
                            onTap: ()=>{},
                            child : new Padding(
                                padding: new EdgeInsets.only(top: 10.0,bottom: 10.0),
                                child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.account_balance_wallet,
                                        color: Color(0XFFF6AB3F),
                                      ),
                                      new Text('Wallet'),
                                    ]))

                        ),
                      ),
                      new Expanded(
                        child: new InkWell(
                            onTap: ()=>{

                            },
                            child : new Padding(
                                padding: new EdgeInsets.only(top: 10.0,bottom: 10.0),
                                child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.monetization_on,
                                        color: Color(0XFF2E93F8),
                                      ),
                                      new Text('Recharge'),
                                    ]))

                        ),
                      ),
                      new Expanded(
                          child: new InkWell(
                              onTap: ()=>{},
                              child : new Padding(
                                  padding: new EdgeInsets.only(top: 10.0,bottom: 10.0),
                                  child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.contact_mail,
                                      color: Color(0XFF999999),
                                    ),
                                    new Text('Authenticate'),
                                  ]))

                          ),
                          ),
                    ],
                  ),
                )
              ],
            ),
          ),
          margin: new EdgeInsets.only(
              top: 0.0, left: 20.0, right: 20.0, bottom: 16.0)),
    ],
  ),
);
