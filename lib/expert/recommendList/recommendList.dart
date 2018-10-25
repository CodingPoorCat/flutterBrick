import 'package:flutter/material.dart';
import '../../common/_recommendItem.dart';


class RecommendList extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return RecommendListState();
    }
}

class RecommendListState extends State<RecommendList>{
  List<Map> dataList = [
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
  List<Widget> recommenList = [];

  List<Widget> initRecommendList (List<Map> dataList){
    for(var i = 0;i<dataList.length;i++ ){
      recommenList.add(RecommendItem(recommend:dataList[i]));
    };
    return recommenList;
  }

  void initState(){
    super.initState();
    initRecommendList(dataList);
  }
  Widget build(BuildContext ctx){
    return ListView(
      children:recommenList
    );
  }
}