import '../../../core/app_export.dart';
import '../models/log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
