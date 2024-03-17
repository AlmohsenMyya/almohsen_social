import '../../../core/app_export.dart';
import '../models/stories_and_tweets_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StoriesAndTweetsScreen.
///
/// This class manages the state of the StoriesAndTweetsScreen, including the
/// current storiesAndTweetsModelObj
class StoriesAndTweetsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<StoriesAndTweetsModel> storiesAndTweetsModelObj =
      StoriesAndTweetsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onReady() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
