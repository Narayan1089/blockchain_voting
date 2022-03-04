// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'utils/colors.dart';
import 'widgets/bottomnavigation.dart';
// import 'package:voting_dapp/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigateScreen(),///Home(),
      debugShowCheckedModeBanner: false,
     theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
    );
  }
}
