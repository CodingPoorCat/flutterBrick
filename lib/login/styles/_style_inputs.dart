import 'package:flutter/material.dart';


Widget inputGroup(TextEditingController username,TextEditingController password){
  return new Form(
    child: new Column(
      children: <Widget>[
        TextField(
          controller: username,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0),
            labelText: '请输入用户名',
            border: InputBorder.none,

    ),
        ),
        new Divider(height: 1.0,color: Colors.grey,indent: 15.0,),
        TextField(
          obscureText : true,
          controller: password,
          decoration: InputDecoration(
              labelText: '请输入密码',
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0),
            border: InputBorder.none,
          ),
//          decoration: InputDecoration(
//              fillColor: Colors.white,
//              filled: true,
//              border: InputBorder.none,
//              contentPadding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0),
//              labelText: '请输入密码'
//          ),
        ),
      ],
    ),
  );
}