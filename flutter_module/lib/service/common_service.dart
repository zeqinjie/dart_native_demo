import 'dart:ffi';
import 'package:flutter_module/service/base_service.dart';
import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
import 'package:flutter_module/service/common_service_delegate.dart';
import 'package:flutter_module/service/common_service_helper.dart';

typedef CommonServiceResultBlock = void Function(String jsonString);

abstract class CommonDelegate {
  void initFromFlutter();

  /* Flutter to Native */

  /// 获取 title
  String? getTitle();

  /* Native to Flutter */

  /// 接收原生端消息
  void handlerFromNative(String jsonString);
}

class CommonService extends BaseService<CommonDelegate>
    with CommonServiceHelper {
  static CommonService shared = CommonService();

  @override
  AndroidImCommonService get androidDelegate => AndroidImCommonService.shared;

  @override
  FlutterImCommonChatService get flutterDelegate =>
      FlutterImCommonChatService();

  @override
  IOSCommonChatService get iosDelegate => IOSCommonChatService.shared;
}

@native()
class IOSCommonChatService extends NSObject
    with CommonServiceHelper
    implements CommonDelegate {
  static const _objcClassName = 'DartNativeDemo.CommonService';

  IOSCommonChatService([Class? isa]) : super(isa ?? Class(_objcClassName));

  IOSCommonChatService.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  static get shared {
    Pointer<Void> resultPtr =
        Class(_objcClassName).performSync(SEL('shared'), decodeRetVal: false);
    return IOSCommonChatService.fromPointer(resultPtr);
  }

  @override
  String getTitle() {
    return performSync(SEL('getTitle'));
  }

  @override
  void handlerFromNative(String jsonString) {
    handlerJsonFromNative(jsonString);
  }

  @override
  void initFromFlutter() {
    performSync(SEL('initFromFlutter:'), args: [handlerFromNative]);
  }
}

class AndroidImCommonService extends JObject
    with CommonServiceHelper
    implements CommonDelegate {
  static const _nativeClassName =
      "com/zhengzeqin/android/flutter/service/base/TWImCommonService";

  AndroidImCommonService() : super(className: _nativeClassName);

  AndroidImCommonService.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);

  static AndroidImCommonService shared = AndroidImCommonService();

  @override
  String? getTitle() {
    return callStringMethodSync('getTitle', args: []);
  }

  @override
  void handlerFromNative(String jsonString) {
    handlerJsonFromNative(jsonString);
  }

  @override
  void initFromFlutter() {
    AndroidImCommonServiceDelegate.shared.resultBlock = (jsonString) {
      handlerFromNative(jsonString);
    };
    AndroidImCommonService.shared.callVoidMethod('initFromFlutter',
        args: [AndroidImCommonServiceDelegate.shared]);
  }
}

class FlutterImCommonChatService implements CommonDelegate {
  static FlutterImCommonChatService shared = FlutterImCommonChatService();

  @override
  String? getTitle() {
    return "";
  }

  @override
  void handlerFromNative(String jsonString) {}

  @override
  void initFromFlutter() {}
}
