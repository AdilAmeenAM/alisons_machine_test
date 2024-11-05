import 'package:alisons_machine_test/main.dart';
import 'package:flutter/material.dart';

class SnackBarUtils {
  static void showMessage(String message) {
    App.scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}