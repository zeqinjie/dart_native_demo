import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/gen/assets.gen.dart';
import 'package:flutter_module/model/chat.dart';
import 'package:flutter_module/tool/log.dart';
import 'package:flutter_module/tool/tool.dart';
import 'package:isar/isar.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  String userName = '';
  String jsonString = '';

  late MethodChannel _channel;
  Isar? userIsar;

  List<ChatModel> listModels = [];
  @override
  void initState() {
    super.initState();
    _channel = const MethodChannel('multiple-flutters');
    handleCachedValue();
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
          title: const Text('chat_list'),
        ),
        body: Builder(builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: buildListView(),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChatListPage(),
                  ));
                },
                child: const Text('Test ChatListPage'),
              ),
              TextButton(
                onPressed: () {
                  clearCache();
                },
                child: const Text('clearCache'),
              ),
              TextButton(
                onPressed: () {
                  _channel.invokeMethod<void>("next");
                },
                child: const Text('Next'),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget buildListView() {
    if (listModels.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      itemBuilder: (context, index) => buildItem(listModels[index]),
      itemCount: listModels.length,
    );
  }

  buildItem(ChatModel model) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      child: Text('uid: ${model.uid} ; name: ${model.nickname}'),
    );
  }

  handleCachedValue() async {
    final list = await fetchCacheList();
    if (list.isNotEmpty) {
      setState(() {
        listModels = list;
      });
    }
    final models = await saveJsonData(Assets.json.chatDetail);
    setState(() {
      listModels = models;
    });
  }

  Future<List<ChatModel>> fetchCacheList() async {
    final isar = await fetchIsar();
    try {
      final list = await isar.chatModels.where().findAll();
      final listArr = list.toList();
      return listArr;
    } catch (e) {
      TWLog('fetchCacheSortUpdateAtList error: $e');
      rethrow;
    }
  }

  Future<Isar> fetchIsar() async {
    final userIsar = Isar.getInstance(ChatModelSchema.name);
    if (userIsar == null) {
      final isar =
          await Isar.open([ChatModelSchema], name: ChatModelSchema.name);
      return isar;
    }
    this.userIsar = userIsar;
    return userIsar;
  }

  Future<List<ChatModel>> saveJsonData(String file) async {
    String jsonString = await Tool.loadJsonFile(file);
    final data = Tool.fetchJsonMap<List>(jsonString);
    List<ChatModel> models = [];
    if (data != null) {
      for (final element in data) {
        final model = ChatModel.fromJson(element);
        models.add(model);
      }
    }
    if (models.isNotEmpty) {
      final isar = await fetchIsar();
      await isar.writeTxn(() async {
        await isar.chatModels.putAll(models);
      });
    }
    return models;
  }

  Future<int> clearCache() async {
    final isar = await fetchIsar();
    try {
      final res = await isar.writeTxn(() async {
        final res = await isar.chatModels.where().deleteAll();
        return res;
      });
      setState(() {
        listModels.clear();
      });
      return res;
    } catch (e) {
      TWLog('fetchCacheSortUpdateAtList error: $e');
      rethrow;
    }
  }
}
