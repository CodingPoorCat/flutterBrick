import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
// 开发参考
// 作者：燃烧的鱼丸
// 链接：https://juejin.im/post/5bb50397f265da0abe270f25
// 来源：掘金


class NewsTab {
  String text;
  String tabid;
  NewsTab(this.text,this.tabid);
}
//定义tab页基本数据结构
final List<NewsTab> NewsTabs = <NewsTab>[
  new NewsTab('英雄联盟','英雄联盟'),
  new NewsTab('王者荣耀','王者荣耀'),
  new NewsTab('Dota2','Dota2'),
  new NewsTab('守望先锋','守望先锋'),
  new NewsTab('绝地求生','绝地求生'),
  new NewsTab('CS:GO','CS:GO'),
  new NewsTab('彩虹6号','彩虹6号'),
];

class TabNavigation extends StatelessWidget {
  TabNavigation(
    {this.currentTab, this.onSelectTab}
  );
  // 以下两个参数由父组件传入并由父组件管理相关状态
  // 参考react的组件开发
  final NewsTab currentTab;
  // TODO
  // ValueChanged的作用是？
  @override
  Widget build(BuildContext context) {
    List<Widget> _renderTabs = [];
    _renderTabs = NewsTabs.map((item){
        // 此处使用Expanded，但是当tab页超级多时，会压缩到看不到，应该有isScroll来管理是否使用Expaned
        // TODO:增加可控参数isScroll
        return Container(
          child: InkWell(
            onTap:()=>onSelectTab(item,),
            child:Container(
              height: 40.0,
              padding: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child:Text(item.text,style: TextStyle(color:_colorTabMatching(item:item)))
              )
        ));
      }).toList();

    return Container(
      height: 50.0,
      child: _TabBar(
        onPerformLayout: _saveTabOffsets,
        children:_renderTabs
        ),
    );
    return Row(children: _renderTabs,);
  }
  Color _colorTabMatching({NewsTab item}) {
    return currentTab == item ? Colors.black : Colors.grey;
  }
  final ValueChanged<NewsTab> onSelectTab;  //这个参数比较关键，仔细理解下，省了setState()调用的环节
  
}
// Called each time layout completes.
  void _saveTabOffsets(List<double> tabOffsets, TextDirection textDirection, double width) {
    print('???????????');
  }
class _TabBar extends Flex {
  _TabBar({
    Key key,
    List<Widget> children = const <Widget>[],
    this.onPerformLayout:_saveTabOffsets
  }):super(
    children:children,
    direction: Axis.horizontal,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    verticalDirection: VerticalDirection.down,
  );
  final _LayoutCallback onPerformLayout;

  @override
  RenderFlex createRenderObject(BuildContext context) {
      return _MyTabRenderer(
        onPerformLayout: onPerformLayout,
        direction: direction,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: getEffectiveTextDirection(context),
        verticalDirection: verticalDirection,
      );
  }
  @override
  void updateRenderObject(BuildContext context, _MyTabRenderer renderObject) {
    super.updateRenderObject(context, renderObject);
    renderObject.onPerformLayout = onPerformLayout;
  }
}
class _MyTabRenderer extends RenderFlex {
    _MyTabRenderer({
      Key key,
      List<RenderBox> children,
      @required this.onPerformLayout,
      @required Axis direction,
      @required MainAxisSize mainAxisSize,
      @required MainAxisAlignment mainAxisAlignment,
      @required CrossAxisAlignment crossAxisAlignment,
      @required TextDirection textDirection,
      @required VerticalDirection verticalDirection,
    }): assert(onPerformLayout != null),
    super(
      children:children,
      textDirection:TextDirection.ltr
    );
    _LayoutCallback onPerformLayout;


    @override
  void performLayout() {
    super.performLayout();
    RenderBox child = firstChild;
    final List<double> xOffsets = <double>[];
    while (child != null) {
      final FlexParentData childParentData = child.parentData;
      xOffsets.add(childParentData.offset.dx);
      print(child.size.width);
      assert(child.parentData == childParentData);
      child = childParentData.nextSibling;
    }

    print('-------------');
    print(size);
    print('-------------');
    // onPerformLayout();
    }
  }
typedef _LayoutCallback = void Function(List<double> xOffsets, TextDirection textDirection, double width);


