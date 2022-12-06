/*
 * @Author: zhengzeqin
 * @Date: 2022-10-11 18:11:21
 * @LastEditTime: 2022-10-11 18:14:29
 * @Description: your project
 */
import 'dart:io';

abstract class BaseService<T> {
  T get iosDelegate;

  T get androidDelegate;

  T get flutterDelegate;

  T get delegate {
    try {
      if (Platform.isIOS) {
        return iosDelegate;
      } else {
        return androidDelegate;
      }
    } catch (e) {
      return flutterDelegate;
    }
  }
}
