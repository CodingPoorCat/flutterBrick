import 'package:flutter/material.dart';
import './banner.dart';
import './banner_evalutor.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Banner Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 static final List<Model> data = [
   new Model(imgUrl: 'https://img01.sogoucdn.com/app/a/100520093/60d2f4fe0275d790-007c9f9485c5acfd-bdc6566f9acf5ba2a7e7190734c38920.jpg'),
   new Model(imgUrl: 'http://img5.duitang.com/uploads/item/201507/07/20150707231358_z4PQr.jpeg'),
   new Model(imgUrl: 'http://img4.duitang.com/uploads/item/201502/27/20150227083741_w5YjR.jpeg'),
   new Model(imgUrl: 'http://img4.duitang.com/uploads/item/201501/06/20150106081248_ae4Rk.jpeg'),
   new Model(imgUrl: 'http://pic1.win4000.com/wallpaper/a/59322eda4daf0.jpg'),
   new Model(imgUrl: 'http://uploads.5068.com/allimg/1711/151-1G130093R1.jpg'),
  ];



 Widget _indicator(int position,int count) {

   return Stack(children: <Widget>[
     Align(alignment: Alignment.bottomCenter,
         child: Container(
           height: 28.0,
           margin: const EdgeInsets.only(left: 0.0,top: 0.0,bottom: 5.0,right: 0.0),
           padding: EdgeInsets.all(2.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Row(children: _circularPoint(position,count))
             ],
           ),
         )),
//     Align(
//         alignment: Alignment.bottomCenter,
//         child: Transform.translate(offset: const Offset(1.0, 0.0),child: Container(
//           width: 8.0,
//           height: 8.0,
//           margin: EdgeInsets.all(2.0),
//           decoration: new BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Colors.black38,
//           ),
//         ),))
   ],) ;
 }

 List<Widget> _circularPoint(int position,int count) {
   List<Widget> widgetList = [];
   for (var i = 0; i < count; i++) {
     widgetList.add(Container(
       width: 8.0,
       height: 8.0,
       margin: EdgeInsets.all(2.0),
       decoration: new BoxDecoration(
         shape: BoxShape.rectangle,
//         color:  Colors.white,
         color: position == i ? Colors.black38 : Colors.white,
       ),
     ));
   }
   return widgetList;
 }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text(widget.title)
      ),
      body: Container(
          child: BannerWidget(
            data: data,
            curve: Curves.linear,
            indicator: (position,count) => _indicator(position,count),
            onClick: (position,bannerWithEval){
              print(position);
            },
        ),
      )
    );
  }
}

class Model extends Object with BannerWithEval {
  final String imgUrl;

  Model({this.imgUrl});

  @override
  get bannerUrl => imgUrl;
}

