import 'package:flutter/material.dart';

class MyBanner extends StatefulWidget {
  State<StatefulWidget> createState() => new _BannerState();
}

class _BannerState extends State<MyBanner> {
  final PageController _pageController = new PageController();
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
                childCount: 10,
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

  @override
  Widget build(BuildContext context) => new Center(
        child: new Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                data,
                style: const TextStyle(fontSize: 60.0),
              ),
              new SizedBox(height: 40.0),
              new Transform(
                transform:
                    new Matrix4.translationValues(parallaxOffset, 0.0, 0.0),
                child: new Text('Yet another line of text' + parallaxOffset.toString()),
              ),
            ],
          ),
        ),
      );
}
