import '../../../core/app_export.dart';
import '../models/trending_posts_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrendingPostsTabContainerScreen.
///
/// This class manages the state of the TrendingPostsTabContainerScreen, including the
/// current trendingPostsTabContainerModelObj
class TrendingPostsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<TrendingPostsTabContainerModel> trendingPostsTabContainerModelObj =
      TrendingPostsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
