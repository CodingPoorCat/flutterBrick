import 'package:flutter/material.dart';

class RecommendItem extends StatefulWidget {
  final Map recommend;
  RecommendItem({Key key, @required this.recommend}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecommendItemState();
  }
}

class RecommendItemState extends State<RecommendItem> {
  Widget build(BuildContext ctx) {
    return Stack(children: <Widget>[
      Container(
          padding: EdgeInsets.only(top:20.0,bottom:10.0,left:10.0,right:10.0),
          margin: EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
            new BoxShadow(color: Colors.black12, blurRadius: 2.0)
          ]),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                      width: 30.0,
                      height: 30.0,
                      margin: EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(widget.recommend['avatar']))),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Text(widget.recommend['expert']['name'],
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                        Text(widget.recommend['expert']['intro']),
                      ])),
                  SizedBox(
                    width: 60.0,
                    height: 40.0,
                    child: Container(
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   color:Colors.red,
                        //   borderRadius: BorderRadius.circular(3.0)
                        // ),
                        child: Text('100%',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600))),
                  )
                ]),
                Text(widget.recommend['r_title'],
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: Color(0XFFECF4FD)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            widget.recommend['game']['title'] +
                                widget.recommend['game']['time'],
                            style: TextStyle(color: Colors.grey)),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 10.0),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: widget.recommend['game']['team1'],
                                      style: TextStyle(fontSize: 22.0)),
                                  TextSpan(text: '   VS   '),
                                  TextSpan(
                                      text: widget.recommend['game']['team2'],
                                      style: TextStyle(fontSize: 22.0))
                                ],
                              )),
                        ),
                      ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(widget.recommend['public_time']))
              ])),
              Positioned(
                left:0.0,
                top:0.0,
                child:ClipRRect(
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(25.0)),
                  child:SizedBox(
                    width:50.0,
                    height:25.0,
                    child: Container(
                      alignment: Alignment.center,
                      color:Colors.blue,
                      child: Text('LOL',style: TextStyle(color:Colors.white),),
                    ),
                  )
                )
              )
    ]);
  }
}
