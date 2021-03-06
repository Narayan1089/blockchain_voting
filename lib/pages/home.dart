// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:web3dart/web3dart.dart';

import '../services/functions.dart';
import '../utils/constants.dart';
import 'electionInfo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Client? httpClient;
  Web3Client? ethClient;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(infura_url, httpClient!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Election'),
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  filled: true, hintText: 'Enter election name'),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    onPressed: () async {
                      if (controller.text.length > 0) {
                        await startElection(controller.text, ethClient!);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ElectionInfo(
                                    ethClient: ethClient!,
                                    electionName: controller.text)));
                      }
                    },
                    child: const Text('Start Election')))
          ],
        ),
      ),
    );
  }
}
