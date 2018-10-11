import 'package:flutter/material.dart';
import '../../common/_titleHeader.dart';

class ExpertList extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return ExpertListState();
    }
}
class ExpertListState extends State<ExpertList>{
  final List<Map> expertList = [
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'catcatcatcatcatcatcat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'},
    {'src':'https://tvax1.sinaimg.cn/crop.0.0.480.480.180/8f6a8729ly8fox2xecaskj20dc0dctb5.jpg','name':'cat'}
  ];
  Widget build(BuildContext ctx){
    return Column(
      children: <Widget> [
        new TitleHeader(title:'专家推荐'),
        Container(
          height: 110.0,
          color:Colors.white,
          padding: EdgeInsets.all(10.0),
          child:ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
          avatarItems(expertList)
        ])
        )
      ]
    ); 
  }
}


Widget avatarItems(List<Map> expertList){
  final List<Widget> list = [];
  for(var i=0;i<expertList.length;i++){
    list.add(Container(
      width: 80.0,
     child: Column(
       children: <Widget>[
         Container(
           width: 60.0,
           height: 60.0,
           child: CircleAvatar(
              backgroundImage: new NetworkImage(expertList[i]['src']),
            ),
          //  child:Image.network(expertList[i]['src'])
         ),
         Align(
           alignment: FractionalOffset.bottomCenter,
           child: Text(expertList[i]['name'],overflow: TextOverflow.ellipsis),
         ),
       ]
     ),
   ));
  }
   return Row(children: list);
}
// 一个专家的头像item