import 'package:flutter/material.dart';
import './styles/_style_inputs.dart';
import 'dart:convert';
import '../api/api.dart';
import 'package:dio/dio.dart';
class Login extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _PageLogin();
  }
}

class _PageLogin extends State<Login>{
  final username = new TextEditingController();
  final password = new TextEditingController();
  Widget build(BuildContext context){
    username.text = '15521291261';
    password.text = '111111';
    return new Scaffold(
      appBar: AppBar(
        title:Text('登录',textAlign: TextAlign.center,),
        leading: new BackButton(),
      ),
        body : new Column(
          children: <Widget>[
            new Container(
              height : 120.0,
              margin: new EdgeInsets.only(top:40.0,bottom: 30.0),
              child: new Image.network('https://flutter-io.cn/assets/flutter-red-square-100.png'),
            ),
            inputGroup(username,password),
            new Builder(
              builder: (BuildContext context){
                return new Container(
                  margin: new EdgeInsets.only(top:80.0),
                  width: MediaQuery.of(context).size.width*0.9,
                  child: new RaisedButton(
                    onPressed: () async {
                      var params = {
                        "module" : 'user',
                        "action" : 'login',
                        "phone" : username.text,
                        "password" : password.text,
                        "type" : '10'
                      };
                      Response response = await HttpUtil.postApi(params);
                      print(response.data);

                      if(response.data["code"] != '0'){
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text(response.data["msg"]),
//                          action: new SnackBarAction(
//                            label: "撤回",
//                            onPressed: () {},
//                          ),
                        ));
                      }else{
                        Navigator.of(context).pushNamed('/home');
                      }
                    },
                    color: Colors.blue,
                    child: new Text('登录',style: TextStyle(color: Colors.white),),
                  ),
                );
              },
            )


          ],
        )
    );
  }
}