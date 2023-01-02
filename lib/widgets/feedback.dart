import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserFeedBack {
// Error snackbar
  static void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Color.fromARGB(255, 194, 77, 71),
      ),
    );
  }

// Success snackbar
  static void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Color.fromARGB(255, 29, 128, 32).withOpacity(0.7),
      ),
    );
  }
}
