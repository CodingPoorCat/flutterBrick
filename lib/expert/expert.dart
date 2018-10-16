
import 'package:flutter/material.dart';
import 'navbar/navbar.dart';
class Expert extends StatefulWidget {
 @override
   State<StatefulWidget> createState() {
     // TODO: implement createState
     return _ExpertState();
   }
}
class _ExpertState extends State<Expert> with SingleTickerProviderStateMixin{
  
  Widget build(BuildContext context) {
    return Container(
      child: Navbar(),
    );
  }
}