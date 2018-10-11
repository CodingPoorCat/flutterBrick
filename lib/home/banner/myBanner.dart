import 'package:flutter/material.dart';

class MyBanner2 extends StatefulWidget {
  State<StatefulWidget> createState() => new _BannerState();
}

class _BannerState extends State<MyBanner2> {
  final PageController _pageController = new PageController(initialPage: 1);
  double _currentPage = 0.0;
  Widget build(BuildContext context) {
    //LayoutBuilder就是让banner的大小局限于父元素的大小
    return new LayoutBuilder(
      //NotificationListener用于监听事件冒泡，
      // 仅当其runtimeType是T的子类型时，通知才会触发onNotification回调。
      // 要分派通知，请使用Notification.dispatch方法。
      builder: (context, constraints) => new NotificationListener(
          onNotification: (ScrollNotification note) {
            setState(() {
              _currentPage = _pageController.page;
            });
          },
          //PageView是可逐页工作的可滚动列表。
          // 页面视图的每个子项都被强制与视口大小相同。
          child: new PageView.custom(
              // physics:页面视图应如何响应用户输入
              physics: const PageScrollPhysics(
                  parent: const BouncingScrollPhysics()),
              controller: _pageController,
              // 子代生成工厂
              childrenDelegate: new SliverChildBuilderDelegate(
                (context, index) => new _SimplePage(
                      '$index',
                      parallaxOffset:
                          constraints.maxWidth / 2.0 * (index - _currentPage),
                    ),
                childCount: 4,
                
              ))),
    );
  }
}

class _SimplePage extends StatelessWidget {
  // 这是Super Constructors
  // 
  _SimplePage(this.data, {Key key, this.parallaxOffset = 0.0})
      : super(key: key);

  final String data;
  final double parallaxOffset;
  final List list = [
    'https://brick.vguess.com/upload/assets/20180130/d5288f0a71cc38a0bb6aba7602cae408.png',
    'https://brick.vguess.com/upload/assets/20180130/e2e7e8d9c2ea9f17c9c532eacc94e22a.png',
    'https://brick.vguess.com/upload/assets/20180130/7dacae0a00af444165caefc220d37741.png',
    'https://brick.vguess.com/upload/assets/20180130/895425f53321284e9f99ef5b5d0d926f.png',
    'https://brick.vguess.com/upload/assets/20180130/d5288f0a71cc38a0bb6aba7602cae408.png',
    'https://brick.vguess.com/upload/assets/20180130/e2e7e8d9c2ea9f17c9c532eacc94e22a.png'
    ];
  @override
  Widget build(BuildContext context) => new Center(
        child: new Container(
          color: Colors.red,
          child: new Stack(
            children: <Widget>[
              // new Container(
              //   child: new Image.network(List[int.parse(data)]),
              // ),
              new Positioned(
                child: new Transform(
                    transform:
                        new Matrix4.translationValues(parallaxOffset, 0.0, 0.0),
                    child: new Text('Yet another line of text' + parallaxOffset.toString()),
                  ),
                bottom: 0.0,
                left: 0.0,
              )
              
            ],
          )
             
        ),
      );
}
