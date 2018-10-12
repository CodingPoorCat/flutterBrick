import 'package:flutter/material.dart';

class TitleHeader extends StatefulWidget{
  final String title;
  final bool moreBtn;
  TitleHeader({
    Key key,
    @required this.title,
    this.moreBtn = true
  }):super(key : key);
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return TitleHeaderState();
    }
}
class TitleHeaderState extends State<TitleHeader>{
  Widget build(BuildContext ctx){
    return Container(
        height: 40.0,
        padding: EdgeInsets.only(left:10.0,right:10.0),
        decoration: BoxDecoration(
          color:Colors.white,
          border:Border(bottom: BorderSide(width: 1.0,color:Colors.black12))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  child: SizedBox(
                    child: Container(
                      height:20.0,
                      width: 5.0,
                      color:Colors.red,
                      margin: EdgeInsets.only(right:10.0),
                    ),
                  ),
                ), 
                Text(
                  widget.title,
                )
              ],
            ),
            widget.moreBtn?
            Row(children: <Widget>[Text('查看更多'),Icon(Icons.chevron_right)]):Container()
            ])

    );
  }
}
