import '../models/friendlist_item_model.dart';
import '../controller/invite_friends_controller.dart';
import 'package:almohsen_s_application10/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class FriendlistItemWidget extends StatelessWidget {
  FriendlistItemWidget(
    this.friendlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FriendlistItemModel friendlistItemModelObj;

  var controller = Get.find<InviteFriendsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: friendlistItemModelObj.kevinAllsrub!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(bottom: 18.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    friendlistItemModelObj.kevinAllsrub1!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    friendlistItemModelObj.yourEFriendsOn!.value,
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 31.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(6.h),
                child: CustomImageView(
                  imagePath: friendlistItemModelObj.checkmark!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
