/*
 * @Author: zhengzeqin
 * @Date: 2022-09-21 09:09:12
 * @LastEditTime: 2022-10-12 10:36:13
 * @Description: your project
 */
import 'dart:ffi';
import 'package:dart_native/dart_native.dart';

abstract class CommonServiceDelegate {
  registerDelegate() {
    registerCallback(this, callbackResult, 'callbackResult');
  }

  callbackResult(String json);
}

class AndroidImCommonServiceDelegate extends JObject
    with CommonServiceDelegate {
  static const String _nativeClassName =
      "com/zeqin/android/flutter/service/delegate/CommonDelegate";

  AndroidImCommonServiceDelegate()
      : super(isInterface: true, className: _nativeClassName) {
    super.registerDelegate();
  }

  AndroidImCommonServiceDelegate.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);

  static AndroidImCommonServiceDelegate shared =
      AndroidImCommonServiceDelegate();

  /// 结果回调
  Function(String json)? resultBlock;

  @override
  callbackResult(String json) {
    resultBlock?.call(json);
  }
}
