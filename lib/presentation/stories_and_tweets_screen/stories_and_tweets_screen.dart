import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_title_searchview.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/livestories_item_widget.dart';
import 'models/livestories_item_model.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/stories_and_tweets_controller.dart';

class StoriesAndTweetsScreen extends GetWidget<StoriesAndTweetsController> {
  const StoriesAndTweetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("lbl_stories".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 19.v),
                      _buildLiveStories(),
                      SizedBox(height: 22.v),
                      _buildFrame()
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup9086,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildLiveStories() {
    return SizedBox(
        height: 89.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller.storiesAndTweetsModelObj.value
                .livestoriesItemList.value.length,
            itemBuilder: (context, index) {
              LivestoriesItemModel model = controller.storiesAndTweetsModelObj
                  .value.livestoriesItemList.value[index];
              return LivestoriesItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.v),
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                      height: 2.v,
                      thickness: 2.v,
                      color: theme.colorScheme.secondaryContainer)));
        },
        itemCount: controller
            .storiesAndTweetsModelObj.value.frameItemList.value.length,
        itemBuilder: (context, index) {
          FrameItemModel model = controller
              .storiesAndTweetsModelObj.value.frameItemList.value[index];
          return FrameItemWidget(model);
        }));
  }
}
