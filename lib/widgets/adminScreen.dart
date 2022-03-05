import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

import '../services/functions.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    Client httpClient;
    Web3Client ethClient;
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController imageController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController imagecontroller = TextEditingController();
    @override
    void initState() {
      httpClient = Client();
      ethClient= Web3Client(infura_url, httpClient!);
      super.initState();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          "Admin",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              // ignore: prefer_const_constructors
              child: Center(
                child: const Text(
                  'Add Candiate',
                  // ignore: unnecessary_const
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                      ),
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: addressController,
                      decoration: const InputDecoration(
                        hintText: "Address",
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: ageController,
                      decoration: const InputDecoration(
                        hintText: "age",
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: genderController,
                      decoration: const InputDecoration(
                        hintText: "gender",
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: imagecontroller,
                      decoration: const InputDecoration(
                        hintText: "image",
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {
                      addCandidate(
                          nameController.text,
                          addressController.text,
                          genderController.text,
                          imagecontroller.text,
                          ageController.text,
                          ethClient);
                      print(nameController.text);
                      print(ageController.text);


                    },
                    child: const Text('Start Election')))

            // Expanded(child: Image.asset('assets/doctor_result.png')),
          ],
        ),
      ),
    );
  }
}
