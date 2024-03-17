import '../../../core/app_export.dart';
import '../models/trending_posts_model.dart';

/// A controller class for the TrendingPostsPage.
///
/// This class manages the state of the TrendingPostsPage, including the
/// current trendingPostsModelObj
class TrendingPostsController extends GetxController {
  TrendingPostsController(this.trendingPostsModelObj);

  Rx<TrendingPostsModel> trendingPostsModelObj;

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  @override
  void onReady() async {
    Get.toNamed(
      AppRoutes.dailyNewTabContainerScreen,
    );
    Get.toNamed(
      AppRoutes.searchScreen,
    );
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
