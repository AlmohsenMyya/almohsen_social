import '../../../core/app_export.dart';
import '../models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController firstNameRowController = TextEditingController();

  TextEditingController lastNameRowController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<String> genderRadioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    firstNameRowController.dispose();
    lastNameRowController.dispose();
    emailController.dispose();
    phoneController.dispose();
    dateOfBirthController.dispose();
  }
}
