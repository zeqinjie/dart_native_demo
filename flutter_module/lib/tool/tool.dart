/*
 * @Author: zhengzeqin
 * @Date: 2022-10-12 11:28:53
 * @LastEditTime: 2022-12-05 23:13:17
 * @Description: your project
 */
import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';

class Tool {
  /// 获取唯一标识：随机数 + 时间
  static String getUniqueId({int count = 3}) {
    String randomStr = Random().nextInt(10).toString();
    for (var i = 0; i < count; i++) {
      var str = Random().nextInt(10);
      randomStr = "$randomStr$str";
    }
    final timeNumber = DateTime.now().millisecondsSinceEpoch;
    final uuid = "$randomStr$timeNumber";
    return uuid;
  }

  static Future<String> loadJsonFile(String filePath) async {
    return await rootBundle.loadString(filePath);
  }


  /// 获取json字典
  static T? fetchJsonMap<T extends Object?> (dynamic data) {
    if (data is T) {
      return data;
    }
    final map = json.decode(data);
    if (map is T) {
      return map;
    }
    return null;
  }
}
