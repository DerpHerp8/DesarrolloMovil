// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login.dart';
import 'mainpage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'MyApp',
      initialRoute: 'loginpage',
      routes: {
        '/': (context) => const MainPage(),
        'loginpage': (context) => const LoginPage(),
      },
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}