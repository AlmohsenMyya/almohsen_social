import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'widgets/commentlist_item_widget.dart';
import 'models/commentlist_item_model.dart';
import 'package:almohsen_s_application10/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application10/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/comments_controller.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends GetWidget<CommentsController> {
  const CommentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_comments".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 21.v),
              _buildCommentList(),
            ],
          ),
        ),
        bottomNavigationBar: _buildCommentBox(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(19.h, 16.v, 377.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.v),
            child: SizedBox(
              width: 382.h,
              child: Divider(
                height: 2.v,
                thickness: 2.v,
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          );
        },
        itemCount:
            controller.commentsModelObj.value.commentlistItemList.value.length,
        itemBuilder: (context, index) {
          CommentlistItemModel model = controller
              .commentsModelObj.value.commentlistItemList.value[index];
          return CommentlistItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentBox() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 39.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.commentController,
              hintText: "lbl_write_a_comment".tr,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillSecondaryContainer,
              fillColor: theme.colorScheme.secondaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup9143,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
