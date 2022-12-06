import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/gen/assets.gen.dart';
import 'package:flutter_module/model/user.dart';
import 'package:flutter_module/tool/log.dart';
import 'package:flutter_module/tool/tool.dart';
import 'package:isar/isar.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  String userName = '';
  String jsonString = '';
  late MethodChannel _channel;
  Isar? userIsar;
  @override
  void initState() {
    super.initState();
    initListen();
    _channel = const MethodChannel('multiple-flutters');
  }

  @override
  void dispose() {
    // final isOpen = userIsar?.isOpen ?? false;
    // if (isOpen) {
    //   userIsar?.close();
    // }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
          title: const Text('user_list'),
        ),
        body: Builder(builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: _buildBuilder(),
              ),
              // Text(
              //   'name is $userName',
              // ),
              // TextButton(
              //   onPressed: () => handleCachedValue(),
              //   child: const Text('update name'),
              // ),
              TextButton(
                onPressed: () => saveJsonData(Assets.json.json14),
                child: const Text('save json 14M'),
              ),
              TextButton(
                onPressed: () => saveJsonData(Assets.json.json16),
                child: const Text('save json 16M'),
              ),
              TextButton(
                onPressed: () => saveJsonData(Assets.json.largeFile),
                child: const Text('save json 26M'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UserListPage(),
                  ));
                },
                child: const Text('UserListPage'),
              ),
              TextButton(
                onPressed: () {
                  _channel.invokeMethod<void>("next", 1);
                },
                child: const Text('Next'),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildBuilder() {
    return FutureBuilder(
      future: loadData(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        // 请求已结束
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            // 请求失败，显示错误
            return Text("Error: ${snapshot.error}");
          } else {
            // 请求成功，显示数据
            return const Center(
              child: SingleChildScrollView(
                child: Text(
                  'jsonString is ???',
                  // 'jsonString is ${snapshot.data}',
                ),
              ),
            );
          }
        } else {
          // 请求未结束，显示loading
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  handleCachedValue() async {
    final isar = await fetchIsar();
    final existingUser = await isar.users.get(1);
    final randomName = 'zhengzeqin ${Tool.getUniqueId()}';
    if (existingUser != null) {
      existingUser.name = randomName;
      await isar.writeTxn(() async {
        await isar.users.put(existingUser);
      });
    } else {
      final newUser = User()..name = randomName;
      await isar.writeTxn(() async {
        await isar.users.put(newUser);
      });
    }
    // isar.close();
    setState(() {
      userName = randomName;
    });
  }

  Future<String> loadData() async {
    final isar = await fetchIsar();
    final existingUser = await isar.users.get(1);
    if (existingUser != null) {
      userName = existingUser.name ?? '???';
      jsonString = existingUser.jsonString ?? '???';
      TWLog('loadData success: $jsonString ');
      return jsonString;
    }
    return '???';
  }

  initListen() async {
    final isar = await fetchIsar();
    Stream<User?> userChanged = isar.users.watchObject(1);
    userChanged.listen((newUser) {
      TWLog('User changed: ${newUser?.name}');
      TWLog('User jsonString: ${newUser?.jsonString}');
    });
  }

  Future<Isar> fetchIsar() async {
    final userIsar = Isar.getInstance(UserSchema.name);
    if (userIsar == null) {
      final isar = await Isar.open(
        [UserSchema],
        maxSizeMiB: 10,
        name: UserSchema.name,
      );
      return isar;
    }
    this.userIsar = userIsar;
    return userIsar;
  }

  saveJsonData(String file) async {
    String json = await Tool.loadJsonFile(file);
    TWLog('file 读取 $file success');
    final isar = await fetchIsar();
    final existingUser = await isar.users.get(1);
    if (existingUser != null) {
      existingUser.jsonString = json;
      await isar.writeTxn(() async {
        await isar.users.put(existingUser);
        TWLog('file 保存 $file success');
      });
    } else {
      final newUser = User()..jsonString = json;
      await isar.writeTxn(() async {
        await isar.users.put(newUser);
        TWLog('file 保存 $file success');
      });
    }
    setState(() {
      jsonString = json;
    });
  }
}
