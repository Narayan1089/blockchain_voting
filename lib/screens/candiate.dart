import 'package:blockchain_voting/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/candiateproviders.dart';
import '../utils/colors.dart';
import '../widgets/doctorinfo.dart';

class CandiatedScreen extends StatefulWidget {
  const CandiatedScreen({ Key? key }) : super(key: key);

  @override
  State<CandiatedScreen> createState() => _CandiatedScreenState();
}

class _CandiatedScreenState extends State<CandiatedScreen> {

  @override
  Widget build(BuildContext context) {
    final data=Provider.of<candiatesprovider>(context);
     return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          "candidates",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color: white,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => HomeScreen(),
                  fullscreenDialog: true,
                ),
              );
            },
          )
        ],
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(top: 10, left: 20),
      //       child: Text(
      //         'Near you',
      //         style: TextStyle(
      //           fontSize: 20,
      //           color: Colors.grey[400],
      //         ),
      //       ),
      //     ),
      body: ListView.builder(
          itemCount: data.candiatedinfo.length,
          itemBuilder: (context, index) {
            return doctorwidget(
              name: data.candiatedinfo[index].name,
              address: data.candiatedinfo[index].address,
              age: data.candiatedinfo[index].age,

              gender: data.candiatedinfo[index].gender,
              image: data.candiatedinfo[index].image,

            );
          }),

      //   ],
      // ),
    );
  }
}

class doctorwidget extends StatelessWidget {
  final String name;
  final int age;
  final String address;
  final String image;

  final String gender;

  const doctorwidget({

    required this.gender,
    required this.name,
    required this.age,
    required this.address,

    required this.image,


  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: white,
                      width: 0.05,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: CircleAvatar(
                          child: Image.asset(image),
                          radius: 22,
                          // backgroundColor: white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height:0.1,),
                            Text(
                            address,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            // Text(
                            //   "ehfrh",
                            //   style: TextStyle(
                            //     fontSize: 12,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                      InkWell(
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Doctorinfo(

                                      address: address,
                                      age: age,

                                      gender: gender,
                                      image: image,
                                      name: name,

                                    )),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
