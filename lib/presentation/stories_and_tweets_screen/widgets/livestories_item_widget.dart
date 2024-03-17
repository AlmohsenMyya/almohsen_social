import '../models/livestories_item_model.dart';
import '../controller/stories_and_tweets_controller.dart';
import 'package:almohsen_s_application10/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class LivestoriesItemWidget extends StatelessWidget {
  LivestoriesItemWidget(
    this.livestoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LivestoriesItemModel livestoriesItemModelObj;

  var controller = Get.find<StoriesAndTweetsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Obx(
              () => CustomIconButton(
                height: 64.adaptSize,
                width: 64.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
                child: CustomImageView(
                  imagePath: livestoriesItemModelObj.save!.value,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                livestoriesItemModelObj.newPost!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
