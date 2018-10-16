import 'package:flutter/material.dart';
import 'recommendItem.dart';
import '../../common/_titleHeader.dart';
class RecommendList extends StatefulWidget {
  final List<Map> list;
  RecommendList({
    Key key,
    this.list
  }):super(key:key);
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return RecommendListState();
    }
}

class RecommendListState extends State<RecommendList> {
  List<Map> recommendlist = [
    {
      "id":'1',
      "avatar":'https://avatars0.githubusercontent.com/u/13484062?s=460&v=4',
      "expert":{
        'name': '牛大师',
        "intro":"简介",
      },
      "r_title":"推荐标题",
      "r_content":"推荐内容",
      "public_time":'2018/10/08 15:00:00',
      "game":{
        "title":"S8全球总决赛",
        "team1":"RNG",
        "team2":"KT",
        "time":'2018/10/12 15:00:00'
      }
    },
    {
      "id":'1',
      "avatar":'https://avatars0.githubusercontent.com/u/13484062?s=460&v=4',
      "expert":{
        'name': '牛大师',
        "intro":"简介",
      },
      "r_title":"推荐标题",
      "r_content":"推荐内容",
      "public_time":'2018/10/08 15:00:00',
      "game":{
        "title":"S8全球总决赛",
        "team1":"RNG",
        "team2":"KT",
        "time":'2018/10/12 15:00:00'
      }
    },
    {
      "id":'1',
      "avatar":'https://avatars0.githubusercontent.com/u/13484062?s=460&v=4',
      "expert":{
        'name': '牛大师',
        "intro":"简介",
      },
      "r_title":"推荐标题",
      "r_content":"推荐内容",
      "public_time":'2018/10/08 15:00:00',
      "game":{
        "title":"S8全球总决赛",
        "team1":"RNG",
        "team2":"KT",
        "time":'2018/10/12 15:00:00'
      }
    },
    {
      "id":'1',
      "avatar":'https://avatars0.githubusercontent.com/u/13484062?s=460&v=4',
      "expert":{
        'name': '牛大师',
        "intro":"简介",
      },
      "r_title":"推荐标题",
      "r_content":"推荐内容",
      "public_time":'2018/10/08 15:00:00',
      "game":{
        "title":"S8全球总决赛",
        "team1":"RNG",
        "team2":"KT",
        "time":'2018/10/12 15:00:00'
      }
    }
    ];
  List<Widget> renderList = [];
  void initState(){
    super.initState();
    getList(recommendlist);
  }
  List<Widget> getList(List<Map> list){
    for(var i = 0;i<list.length;i++ ){
      renderList.add(new RecommendItem(recommend:list[i]));
    }
    return renderList;
  }
  Widget build(BuildContext ctx){
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:10.0),
          child:TitleHeader(title:'赛事推荐',moreBtn:false),
        ),
        Column(
          children:renderList
        )
      ],
    );
  }
}





