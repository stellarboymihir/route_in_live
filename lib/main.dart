import 'package:flutter/material.dart';
import 'package:route_in_live/rect.dart';
import 'package:route_in_live/task.dart';
import 'package:route_in_live/taskOne.dart';

import 'authentication/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'NotoSansKR',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: const TaskOne(),
      // const Task(),
      // const Rect(),
      // SplashScreen(),
    );
  }
}
