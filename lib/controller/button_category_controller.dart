import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeMenuController extends GetxController {
  final buttonLabels = ['All', 'Indian', 'Asian', 'Amerikan', 'Afrikan'].obs;

  final onPressedCallbacks = <VoidCallback>[].obs;

  @override
  void onInit() {
    super.onInit();
    onPressedCallbacks.addAll([
      () {
        print('All button pressed');
      },
      () {
        print('Indian button pressed');
      },
      () {
        print('Asian button pressed');
      },
      () {
        print('Amerikan button pressed');
      },
      () {
        print('Afrikan button pressed');
      },
    ]);
  }
}
