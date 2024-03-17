import '../models/eventslist_item_model.dart';
import '../controller/stories_controller.dart';
import 'package:almohsen_s_application10/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class EventslistItemWidget extends StatelessWidget {
  EventslistItemWidget(
    this.eventslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventslistItemModel eventslistItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 144.v,
              width: 147.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: eventslistItemModelObj.lIVEWeTheFest!.value,
                      height: 144.v,
                      width: 147.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 20.v,
                    width: 54.h,
                    text: "lbl_live".tr,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 12.v,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup9027,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.labelMediumPrimary,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: eventslistItemModelObj.blueLoyalParty!.value,
                height: 144.v,
                width: 147.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Obx(
                  () => Text(
                    eventslistItemModelObj.lIVEWeTheFest1!.value,
                    style: CustomTextStyles.titleSmallBlack90001,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    eventslistItemModelObj.price!.value,
                    style: CustomTextStyles.labelLargeBluegray400,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    eventslistItemModelObj.blueLoyalParty1!.value,
                    style: CustomTextStyles.titleSmallBlack90001,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    eventslistItemModelObj.price1!.value,
                    style: CustomTextStyles.labelLargeBluegray400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
