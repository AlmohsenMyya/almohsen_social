import 'package:almohsen_s_application10/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/notification_controller.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 168.v,
            right: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationBell,
                height: 161.v,
                width: 146.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 45.v),
              Text(
                "msg_turn_on_notifications".tr,
                style: CustomTextStyles.headlineLargePrimary,
              ),
              SizedBox(height: 18.v),
              Container(
                width: 339.h,
                margin: EdgeInsets.only(right: 42.h),
                child: Text(
                  "msg_turn_on_notifications2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildNotificationRow(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "lbl_notifications".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Obx(
          () => CustomSwitch(
            margin: EdgeInsets.only(bottom: 3.v),
            value: controller.isSelectedSwitch.value,
            onChange: (value) {
              controller.isSelectedSwitch.value = value;
            },
          ),
        ),
      ],
    );
  }
}
