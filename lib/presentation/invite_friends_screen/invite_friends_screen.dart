import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/friendlist_item_widget.dart';
import 'models/friendlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/invite_friends_controller.dart';

class InviteFriendsScreen extends GetWidget<InviteFriendsController> {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_invite_friends".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 20.v),
                      _buildFriendList()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapClose();
            }),
        actions: [
          AppbarSubtitleOne(
              text: "lbl_next".tr,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildFriendList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
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
                .inviteFriendsModelObj.value.friendlistItemList.value.length,
            itemBuilder: (context, index) {
              FriendlistItemModel model = controller
                  .inviteFriendsModelObj.value.friendlistItemList.value[index];
              return FriendlistItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
