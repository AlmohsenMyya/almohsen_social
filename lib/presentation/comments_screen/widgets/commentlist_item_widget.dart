import '../models/commentlist_item_model.dart';
import '../controller/comments_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class CommentlistItemWidget extends StatelessWidget {
  CommentlistItemWidget(
    this.commentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CommentlistItemModel commentlistItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse21,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 9.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      commentlistItemModelObj.rizalReynaldhi!.value,
                      style: CustomTextStyles.titleMediumGray600,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      commentlistItemModelObj.duration!.value,
                      style: CustomTextStyles.labelMediumGray500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 382.h,
          child: Obx(
            () => Text(
              commentlistItemModelObj.mostPeopleNever!.value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeBluegray700.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ),
        SizedBox(height: 17.v),
        Obx(
          () => Text(
            commentlistItemModelObj.reply!.value,
            style: CustomTextStyles.titleMediumDeeppurpleA200SemiBold_1,
          ),
        ),
      ],
    );
  }
}
