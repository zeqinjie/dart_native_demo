/*
 * @Author: zhengzeqin
 * @Date: 2022-10-11 18:12:25
 * @LastEditTime: 2022-10-11 18:18:43
 * @Description: your project
 */
import 'package:stack_trace/stack_trace.dart';

enum TWLogMode {
  debug, // 💚 DEBUG
  warning, // 💛 WARNING
  info, // 💙 INFO
  error, // ❤️ ERROR
}

void TWLog(
  dynamic msg, {
  TWLogMode mode = TWLogMode.debug,
}) {
  var chain = Chain.current(); // Chain.forTrace(StackTrace.current);
  // 将 core 和 flutter 包的堆栈合起来（即相关数据只剩其中一条）
  chain =
      chain.foldFrames((frame) => frame.isCore || frame.package == "flutter");
  // 取出所有信息帧
  final frames = chain.toTrace().frames;
  // 找到当前函数的信息帧
  final idx = frames.indexWhere((element) => element.member == "TWLog");
  if (idx == -1 || idx + 1 >= frames.length) {
    return;
  }
  // 调用当前函数的函数信息帧
  final frame = frames[idx + 1];

  var modeStr = "";
  switch (mode) {
    case TWLogMode.debug:
      modeStr = "💚 DEBUG";
      break;
    case TWLogMode.warning:
      modeStr = "💛 WARNING";
      break;
    case TWLogMode.info:
      modeStr = "💙 INFO";
      break;
    case TWLogMode.error:
      modeStr = "❤️ ERROR";
      break;
  }

  final printStr =
      "$modeStr ${frame.uri.toString().split("/").last}(${frame.line}) - $msg ";
  print(printStr);
}
