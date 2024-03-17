import '../models/messageslist_item_model.dart';
import '../controller/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class MessageslistItemWidget extends StatelessWidget {
  MessageslistItemWidget(
    this.messageslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageslistItemModel messageslistItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 54.v,
            width: 52.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse22,
                  height: 54.v,
                  width: 52.h,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green600,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messageslistItemModelObj.richardAlves!.value,
                    style: CustomTextStyles.titleMediumBlack90001,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    messageslistItemModelObj.heyBroWhereAre!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 30.v,
            ),
            child: Obx(
              () => Text(
                messageslistItemModelObj.time!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
