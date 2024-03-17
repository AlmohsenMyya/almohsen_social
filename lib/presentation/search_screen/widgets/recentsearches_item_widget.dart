import '../models/recentsearches_item_model.dart';
import '../controller/search_controller.dart';
import 'package:almohsen_s_application10/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class RecentsearchesItemWidget extends StatelessWidget {
  RecentsearchesItemWidget(
    this.recentsearchesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentsearchesItemModel recentsearchesItemModelObj;

  var controller = Get.find<SearchController>();

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
              imagePath: recentsearchesItemModelObj.kevinAllsrub!.value,
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
                    recentsearchesItemModelObj.kevinAllsrub1!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    recentsearchesItemModelObj.yourEFriendsOn!.value,
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          _buildFollowButton1(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowButton1() {
    return CustomOutlinedButton(
      width: 76.h,
      text: "lbl_follow".tr,
      margin: EdgeInsets.only(
        top: 9.v,
        bottom: 26.v,
      ),
    );
  }
}
