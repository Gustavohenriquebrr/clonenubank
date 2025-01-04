import 'dart:math';

import 'package:get/get.dart';

class ControllerHomepage extends GetxController {
  String saldo = 'R\$ 987.257,00';
  bool eyesvalue = true;

  void showvalue() {
    eyesvalue = !eyesvalue;

    update();
  }
}
