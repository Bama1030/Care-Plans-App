import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CommonFunctions {
  static blankSpace(double? height, double? width) {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    );
  }

  static divider() {
    return const Divider(
       color: Color.fromARGB(234, 103, 169, 199),
      //color: Colors.white,
      height: 0,
      thickness: 3,
    );
  }

   static divider1() {
    return  Divider(
      color: greyShade3,
      height: 0,
      thickness: 3,
    );
  }
}
