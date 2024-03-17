import '../../../core/app_export.dart';
import '../models/live_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LiveScreen.
///
/// This class manages the state of the LiveScreen, including the
/// current liveModelObj
class LiveController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<LiveModel> liveModelObj = LiveModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
