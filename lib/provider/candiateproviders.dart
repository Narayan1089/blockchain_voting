import 'package:blockchain_voting/provider/candiates.dart';
import 'package:flutter/widgets.dart';

class candiatesprovider with ChangeNotifier {
  final List<candiates> candiatedinfo = [
    candiates(

      count: 2,
      name: "narayan op",
    ),
    candiates(

      count: 2,

      name: "narayan op",
    ),

  ];

  List<candiates> get candiatescount {
    return [...candiatedinfo];
  }
}
