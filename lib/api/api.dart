import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class HttpUtil {
  
  static void post(Object data) async {
    await postApi(data);
  }
  
  static Future postApi(data) async {
    String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    // 这里其实就是 digest.toString()
    return hex.encode(digest.bytes);
  }

   getAccessToken() async {
    String accessToken;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessToken = prefs.getString("access_token");
    return accessToken;
  }

  getAccessTokenSecret() async{
    String accessTokenSecret;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessTokenSecret = prefs.getString("access_token_secret");
    return accessTokenSecret;
  }


    final Dio dio = new Dio();
    const api = 'https://brick.vguess.com/app.php';
    const app_id = '669cd41d03301d062e27fbb57d87bfa5';
    const app_secret = '3624bcb8613b5ed837e03bf217725d30';
    var timeTs =  new DateTime.now().millisecondsSinceEpoch.toString();
    String accessToken = await getAccessToken();
    String accessTokenSecret = await getAccessTokenSecret();

    data['appid'] = app_id;
    data['app_ts'] = timeTs;
    data['appid'] = app_id;
    if (accessToken == null) {
      data['app_signature'] = generateMd5(generateMd5('null' + app_secret + timeTs));
    } else {
      data['app_signature'] =
          generateMd5(generateMd5(accessToken + accessTokenSecret + app_secret + timeTs));
    }
    return await dio.post(api, data: data);
  }
}
