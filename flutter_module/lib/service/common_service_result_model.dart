/*
 * @Author: zhengzeqin
 * @Date: 2022-09-21 18:09:06
 * @LastEditTime: 2022-10-12 10:33:36
 * @Description: your project
 */
import 'dart:convert';
import 'package:flutter_module/tool/safe_convert.dart';

enum CommonServiceResultReceiveType {
  unKnown('0'),
  sendCount('1'),
  sendMessage('2');

  final String value;

  const CommonServiceResultReceiveType(this.value);

  static CommonServiceResultReceiveType forType(String value) {
    switch (value) {
      case "1":
        return sendCount;
      case "2":
        return sendMessage;
    }
    return unKnown;
  }
}

class TWImServiceResultModel {
  TWImServiceResultModel({
    this.type,
    this.value,
  });

  factory TWImServiceResultModel.fromJson(Map<String, dynamic> json) =>
      TWImServiceResultModel(
        type: asT<String?>(json['type']),
        value: asT<String?>(json['value']),
      );

  String? type;
  String? value;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'value': value,
      };

  TWImServiceResultModel copy() {
    return TWImServiceResultModel(
      type: type,
      value: value,
    );
  }
}
