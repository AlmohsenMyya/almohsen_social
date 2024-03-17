import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/stories1_item_widget.dart';
import 'models/stories1_item_model.dart';
import 'widgets/messageslist_item_widget.dart';
import 'models/messageslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/messages_controller.dart';
import 'models/messages_model.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key}) : super(key: key);

  MessagesController controller =
      Get.put(MessagesController(MessagesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_messages".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 18.v),
                      _buildStories(),
                      SizedBox(height: 23.v),
                      _buildMessagesList()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgAddDeepPurpleA200,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildStories() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 81.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.h);
                },
                itemCount: controller
                    .messagesModelObj.value.stories1ItemList.value.length,
                itemBuilder: (context, index) {
                  Stories1ItemModel model = controller
                      .messagesModelObj.value.stories1ItemList.value[index];
                  return Stories1ItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildMessagesList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0.v),
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                      height: 2.v,
                      thickness: 2.v,
                      color: theme.colorScheme.secondaryContainer)));
        },
        itemCount:
            controller.messagesModelObj.value.messageslistItemList.value.length,
        itemBuilder: (context, index) {
          MessageslistItemModel model = controller
              .messagesModelObj.value.messageslistItemList.value[index];
          return MessageslistItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }
}
