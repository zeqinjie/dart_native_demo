// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_module/client.dart';
import 'package:flutter_module/home.dart';

void main() {
  Client.instance.init();
  runApp(const HomePage(color: Colors.blue));
}

@pragma('vm:entry-point')
void topMain() {
  Client.instance.init();
  runApp(const HomePage(color: Colors.green));
}

@pragma('vm:entry-point')
void bottomMain() {
  Client.instance.init();
  runApp(const HomePage(color: Colors.purple));
}
