/*
 * @Author: zhengzeqin
 * @Date: 2022-10-12 09:42:43
 * @LastEditTime: 2022-12-06 15:50:54
 * @Description: your project
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/client.dart';
import 'package:flutter_module/service/common_service.dart';
import 'package:flutter_module/tool/tool.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.color});

  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: color,
      ),
      home: MyHomePage(
        title: CommonService.shared.delegate.getTitle() ?? 'Flutter Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with ClientDelegate {
  int? _counter = 0;
  late MethodChannel _channel;
  String _title = 'You have pushed the button this many times123:';
  late String _id;

  @override
  void initState() {
    super.initState();
    _id = Tool.getUniqueId();
    Client.instance.register(_id, this);
    _channel = const MethodChannel('multiple-flutters');
    _channel.setMethodCallHandler((call) async {
      if (call.method == "setCount") {
        // A notification that the host platform's data model has been updated.
        setState(() {
          _counter = call.arguments as int?;
        });
      } else {
        throw Exception('not implemented ${call.method}');
      }
    });
  }

  @override
  void dispose() {
    Client.instance.remove(_id);
    super.dispose();
  }

  /// 接收到值
  @override
  void onReceiveCount(int result) {
    setState(() {
      _counter = result;
    });
  }

  /// 接收到消息
  @override
  void onReceiveMessage(String result) {
    setState(() {
      _title = result;
    });
  }

  void _incrementCounter() {
    // Mutations to the data model are forwarded to the host platform.
    _channel.invokeMethod<void>("incrementCount", _counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _title,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: _incrementCounter,
              child: const Text('Add'),
            ),
            TextButton(
              onPressed: () {
                _channel.invokeMethod<void>("next", _counter);
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
