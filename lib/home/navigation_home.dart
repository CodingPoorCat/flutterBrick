import 'package:flutter/material.dart';
import 'banner/infiniteBanner.dart';
import 'expertList/expertList.dart';
import 'recommendList/recommendList.dart';

class PageHome extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _PageHomeState();
  }
  
}
class _PageHomeState extends State<PageHome>{
  final List<Map> list = [
    {
      "id" : '0',
      "url" : 'https://img.alicdn.com/simba/img/TB1SyMeshGYBuNjy0FnSut5lpXa.jpg',
    },
    {
      "id" : '1',
      "url" : 'https://img.alicdn.com/simba/img/TB1upUmchTpK1RjSZFGSuwHqFXa.jpg',
    },
    {
      "id" : '2',
      "url" : 'https://img.alicdn.com/tps/i4/TB1Dhz3b4naK1RjSZFtSuvC2VXa.jpg_q90_.webp',
    },
    {
      "id" : '3',
      "url" : 'https://aecpm.alicdn.com/tfscom/TB1i9ZyAQyWBuNjy0FpXXassXXa.png',
    }
  ];
  
  final OnClick onClick = (int current,Map banner){
    print(banner['id']);
  };
  final IndicatorBuild indicator = (int current,int count){
    List<Widget> dotList = [];
    for(var i = 0;i<count;i++){
      dotList.add(Container(
        width: 12.0,
        height: 12.0,
        margin: EdgeInsets.all(5.0),
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: current == (i+1) ? Colors.black38 : Colors.white,
        )
      ));
    }
    return Align(
      alignment: FractionalOffset.bottomCenter,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:dotList
        ),
    );
  };
  


  Widget build(BuildContext context){
    
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            // width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: new InfiniteBanner(data:list,indicator:indicator,onClick:onClick),
          ),
          ExpertList(),
          RecommendList()
        ],
      )
      
    );
  }
}