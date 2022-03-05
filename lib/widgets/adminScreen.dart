import 'package:flutter/material.dart';

import '../services/functions.dart';
import '../utils/colors.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({ Key? key }) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController imageController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController imagecontroller = TextEditingController();
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

      body: Column(
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
              child: Column(children: [TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                      ),
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: addressController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Address",
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: ageController,
                     keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "age",
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: genderController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "gender",
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),


                    const SizedBox(height: 10),TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: imagecontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "image",
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),

                    const SizedBox(height: 10),],),
            ),
          ),
          SizedBox(height:20),
          Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {

                      addCandidate(
                          nameController.text,addressController.text,ageController.text,genderController.text,imagecontroller.text, widget.ethClient);
                    },

                    },

                    child: const Text('Start Election')))


          // Expanded(child: Image.asset('assets/doctor_result.png')),
        ],
      ),
    );
  }
}