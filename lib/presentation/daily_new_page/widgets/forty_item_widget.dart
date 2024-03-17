import '../models/forty_item_model.dart';
import '../controller/daily_new_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class FortyItemWidget extends StatelessWidget {
  FortyItemWidget(
    this.fortyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortyItemModel fortyItemModelObj;

  var controller = Get.find<DailyNewController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167.h,
      child: Obx(
        () => CustomImageView(
          imagePath: fortyItemModelObj.forty!.value,
          height: 167.adaptSize,
          width: 167.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
