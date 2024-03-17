import '../models/storieslist_item_model.dart';
import '../controller/stories_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class StorieslistItemWidget extends StatelessWidget {
  StorieslistItemWidget(
    this.storieslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StorieslistItemModel storieslistItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder32,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: storieslistItemModelObj.roy!.value,
                  height: 54.v,
                  width: 52.h,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Obx(
              () => Text(
                storieslistItemModelObj.roy1!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
