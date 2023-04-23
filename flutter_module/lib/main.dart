// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_module/client/client.dart';
import 'package:flutter_module/page/home_page.dart';
import 'package:flutter_module/page/map_page.dart';
import 'package:flutter_module/tool/log.dart';
import 'package:flutter_module/tool/tool.dart';

void main(List<String> args) {
  TWLog('原生传的 args ==> $args');

  Client.instance.init();
  final initialRoute = getInitialRoute({"args": args}) ?? '/';
  runApp(
    MaterialApp(
      initialRoute: initialRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const HomePage(title: 'home'),
        "map": (context) => const MapPage(),
      },
    ),
  );
}

String? getInitialRoute(Map options) {
  final jsonObj = _fetchRouteParams(options);
  if (jsonObj != null) {
    return jsonObj["initialRoute"]?.toString();
  }
  return null;
}

/// 格式对象
Map<String, dynamic>? _fetchRouteParams(Map options) {
  var args = options["args"];
  if (args is List && args.isNotEmpty) {
    var jsonObj = Tool.fetchJsonMap<Map<String, dynamic>>(args.first);
    TWLog('TEST: flutter 获取 map: $jsonObj');
    return jsonObj;
  }
  return null;
}

@pragma('vm:entry-point')
void topMain() {
  Client.instance.init();
  runApp(const HomePage(title: 'topMain'));
}

@pragma('vm:entry-point')
void bottomMain() {
  Client.instance.init();
  runApp(const HomePage(title: 'bottomMain'));
}
