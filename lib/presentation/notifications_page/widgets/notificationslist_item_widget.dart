import '../models/notificationslist_item_model.dart';
import '../controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class NotificationslistItemWidget extends StatelessWidget {
  NotificationslistItemWidget(
    this.notificationslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationslistItemModel notificationslistItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: notificationslistItemModelObj.image!.value,
              height: 54.v,
              width: 52.h,
              radius: BorderRadius.circular(
                27.h,
              ),
              margin: EdgeInsets.only(bottom: 26.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    notificationslistItemModelObj.kevinHasFollowed!.value,
                    style: CustomTextStyles.titleMediumBlack90001,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    notificationslistItemModelObj.duration!.value,
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
