/*
 * @Author: zhengzeqin
 * @Date: 2022-09-21 19:41:58
 * @LastEditTime: 2022-10-12 11:31:56
 * @Description: your project
 */
import 'dart:convert';
import 'package:flutter_module/client.dart';
import 'package:flutter_module/tool/log.dart';
import 'package:flutter_module/service/common_service_result_model.dart';

class CommonServiceHelper {
  /* Native to Flutter*/

  /// 接收到值
  void onReceiveCount(int result) {
    TWLog('onReceiveCount => $result');
    Client.instance.onReceiveCount(result);
  }

  /// 接收到消息
  void onReceiveMessage(String result) {
    TWLog('onReceiveMessage => $result');
    Client.instance.onReceiveMessage(result);
  }

  /// 返回结果对象 model
  TWImServiceResultModel getNativeResultModel({
    required String jsonString,
  }) {
    final jsonMap = json.decode(jsonString) ?? {};
    return TWImServiceResultModel.fromJson(jsonMap);
  }

  /// 处理来自原生的数据
  void handlerJsonFromNative(String jsonString) {
    TWLog('im jsonString=$jsonString');
    final model = getNativeResultModel(jsonString: jsonString);
    if (model.type == null || model.value == null) {
      return;
    }
    final value = model.value ?? '';
    final type = model.type ?? '';
    final receiveType = CommonServiceResultReceiveType.forType(type);
    switch (receiveType) {
      case CommonServiceResultReceiveType.sendCount:
        final num = int.tryParse(value);
        if (num != null) {
          onReceiveCount(num);
        }
        break;
      case CommonServiceResultReceiveType.sendMessage:
        onReceiveMessage(value);
        break;
      default:
        break;
    }
  }
}
