import 'package:flutter/material.dart';
import 'package:home_page/caro_slide.dart';
import 'package:home_page/caro_slider.dart';
import 'package:home_page/constants/pro_field.dart';
import 'package:home_page/shailarani.dart';

import 'constants/home.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.cyan,
        // ···
        brightness: Brightness.light,)
      ),
      home:  ShilaRani()
    );
  }
}

