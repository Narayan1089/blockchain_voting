// ignore_for_file: prefer_const_constructors

import 'package:blockchain_voting/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';
// import 'package:voting_dapp/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigateScreen(),///Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.deepPurple,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
          ),
          appBarTheme: AppBarTheme(elevation: 0)),
    );
  }
}
