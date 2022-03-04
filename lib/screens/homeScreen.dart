import 'package:blockchain_voting/resources/auth_methods.dart';
import 'package:blockchain_voting/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          "Honesty3.0",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: white,
              size: 30.0,
            ),
            onPressed: () async {
              await AuthMethods().signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          )
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            child: Center(
              child: const Text(
                'Welcome User',
                // ignore: unnecessary_const
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Expanded(child: Image.asset('assets/doctor_result.png')),
        ],
      ),
    );
  }
}