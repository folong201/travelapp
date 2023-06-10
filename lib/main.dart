

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traavel201/HomeScreen.dart';
import 'package:traavel201/Second.dart';
import 'package:traavel201/news_details_screen.dart';
import 'package:traavel201/profile_screen.dart';
import 'app_styles.dart';
import 'size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => Second(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      // home: HomeScreen(),
      // home: NewDetailsScreen(),
      // home: NewDetailsScreen(),
    );
  }
}
