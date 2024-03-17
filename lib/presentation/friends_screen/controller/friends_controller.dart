import '../../../core/app_export.dart';
import '../models/friends_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FriendsScreen.
///
/// This class manages the state of the FriendsScreen, including the
/// current friendsModelObj
class FriendsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FriendsModel> friendsModelObj = FriendsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
