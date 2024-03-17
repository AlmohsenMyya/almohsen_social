import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application10/widgets/custom_elevated_button.dart';
import 'widgets/conversions_item_widget.dart';
import 'models/conversions_item_model.dart';
import 'package:almohsen_s_application10/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application10/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/page_view_controller.dart';

class PageViewScreen extends GetWidget<PageViewController> {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageView),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 13.v),
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToBlueGray
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder15),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildAppBar(),
                              Spacer(),
                              SizedBox(height: 26.v),
                              _buildStreamDetails()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBack,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgQuestion,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGrid,
              margin: EdgeInsets.only(left: 24.h, right: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildPostDescription() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomElevatedButton(
          height: 28.v,
          width: 71.h,
          text: "lbl_4_6".tr,
          buttonStyle: CustomButtonStyles.fillDeepPurpleATL14,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary),
      SizedBox(height: 22.v),
      Container(
          width: 300.h,
          margin: EdgeInsets.only(right: 82.h),
          child: Text("msg_haliford_luxury_hotel".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displayMedium)),
      SizedBox(height: 23.v),
      SizedBox(
          width: 381.h,
          child: Text("msg_halford_hotel_is".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildConversions() {
    return SizedBox(
        height: 40.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 13.h);
            },
            itemCount: controller
                .pageViewModelObj.value.conversionsItemList.value.length,
            itemBuilder: (context, index) {
              ConversionsItemModel model = controller
                  .pageViewModelObj.value.conversionsItemList.value[index];
              return ConversionsItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildStreamDetails() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          _buildPostDescription(),
          SizedBox(height: 98.v),
          _buildConversions(),
          SizedBox(height: 40.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomTextFormField(
                    controller: controller.commentController,
                    hintText: "lbl_write_a_comment".tr,
                    hintStyle: CustomTextStyles.titleSmallPrimary,
                    textInputAction: TextInputAction.done,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray600)),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgGroup9143)))
          ])
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }
}
