import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(context) {
    return MediaQuery.of(context).size.width < 670;
  }

  static bool isDesktop(context) {
    return MediaQuery.of(context).size.width >= 1300;
  }

  static bool isTab(context) {
    return (MediaQuery.of(context).size.width < 1300 &&
        MediaQuery.of(context).size.width >= 670);
  }
}
