import '../models/ninetysevenlist_item_model.dart';
import '../controller/friends_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class NinetysevenlistItemWidget extends StatelessWidget {
  NinetysevenlistItemWidget(
    this.ninetysevenlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetysevenlistItemModel ninetysevenlistItemModelObj;

  var controller = Get.find<FriendsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Obx(
        () => CustomImageView(
          imagePath: ninetysevenlistItemModelObj.trash!.value,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
      ),
    );
  }
}
