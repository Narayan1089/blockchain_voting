import 'package:blockchain_voting/provider/candiates.dart';
import 'package:flutter/widgets.dart';

class candiatesprovider with ChangeNotifier {
  final List<candiates> candiatedinfo = [
    candiates(
      address: "jkwefkjejfb",
      age: 21,
      count: 2,
      gender: "male",
      image: "jglhegh",
      name: "narayan op",
    ),
    candiates(
      address: "jkwefkjejfb",
      age: 21,
      count: 2,
      gender: "male",
      image: "jglhegh",
      name: "narayan op",
    ),
    candiates(
      address: "jkwefkjejfb",
      age: 21,
      count: 2,
      gender: "male",
      image: "jglhegh",
      name: "narayan op",
    ),
    candiates(
      address: "jkwefkjejfb",
      age: 21,
      count: 2,
      gender: "male",
      image: "jglhegh",
      name: "narayan op",
    ),
  ];

  List<candiates> get candiatescount {
    return [...candiatedinfo];
  }
}
