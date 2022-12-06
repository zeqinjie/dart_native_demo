/*
 * @Author: zhengzeqin
 * @Date: 2022-10-12 11:21:22
 * @LastEditTime: 2022-12-06 11:06:40
 * @Description: your project
 */

import 'package:flutter_module/service/common_service.dart';
import 'package:flutter_module/tool/log.dart';

abstract class ClientDelegate {
  ///  接收到值
  void onReceiveCount(int result) {}

  /// 接收到消息
  void onReceiveMessage(String result) {}
}

class Client {
  factory Client() => _getInstance();

  static Client get instance => _getInstance();
  static Client? _instance;

  Map<String, ClientDelegate> map = {};

  Client._internal();

  static Client _getInstance() {
    _instance ??= Client._internal();
    return _instance!;
  }

  void init() {
    TWLog('initFromFlutter...');
    CommonService.shared.delegate.initFromFlutter();
  }

  /// 注意 注册回调,确保 key 唯一
  void register(
    String key,
    ClientDelegate delete,
  ) {
    map[key] = delete;
  }

  /// 注意在 dispose 回收注册对象，避免内存泄露
  void remove(String key) {
    map.remove(key);
  }

  ///接收原生-消息内容
  void onReceiveMessage(String result) {
    map.forEach((key, value) {
      value.onReceiveMessage(result);
    });
  }

  /// 接收到值
  void onReceiveCount(int result) {
    map.forEach((key, value) {
      value.onReceiveCount(result);
    });
  }
}
