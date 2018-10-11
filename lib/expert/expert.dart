
import 'package:flutter/material.dart';
class Expert extends StatefulWidget {
  // Expert实例化时可接收的参数
  final Widget floatingActionButton;
  final List<Widget> tabViews;
  final List<Widget> tabItems;
  // 类似于 VUE的props
  Expert({
    Key key,
    this.floatingActionButton,
    this.tabViews,
    this.tabItems
  });
  State<StatefulWidget> createState(){
    return _ExpertState();
  }
}
class _ExpertState extends State<Expert> with SingleTickerProviderStateMixin{
  TabController _tabController;
  void initState(){
    super.initState();
    _tabController = new TabController(vsync:this,length:1);
  }
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: widget.floatingActionButton,
      body: new TabBarView(
        controller: _tabController,
        children: widget.tabViews
      ),
      bottomNavigationBar:new TabBar(
            //TabBar导航标签，底部导航放到Scaffold的bottomNavigationBar中
            controller: _tabController, //配置控制器
            tabs: widget.tabItems,
          )
    );
  }
}